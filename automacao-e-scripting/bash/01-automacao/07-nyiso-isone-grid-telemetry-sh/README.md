# 07 — NYISO & ISO-NE Energy Grid Telemetry Watcher (Bash)

Um monitor em Bash que **captura continuamente os preços de energia em tempo real** publicados pelos operadores da rede elétrica de Nova York (**NYISO**) e da Nova Inglaterra (**ISO-NE**), calcula médias e **dispara alertas quando os preços sobem acima de um limite**.

Este documento explica **o problema, o raciocínio por trás do desenho e como cada peça funciona**, sem entrar em código.

---

## 1. O problema que o projeto resolve

O preço da eletricidade em mercados atacadistas não é fixo: ele muda a cada poucos minutos, conforme a demanda, a geração disponível e as restrições da rede. Em momentos de estresse, como ondas de calor ou frio extremo, o preço pode saltar muitas vezes acima do normal em curtos períodos.

Para quem opera usinas solares, sistemas de baterias ou comercializa energia, esses picos são oportunidades (vender quando o preço está alto) ou riscos (comprar caro). Quem percebe o pico cedo ganha tempo para reagir.

O projeto resolve a parte da **percepção**: busca os preços publicados, calcula tendências e avisa quando algo anormal acontece, de forma leve o bastante para rodar em um servidor Linux simples.

### Cenário de negócios (NY / MA / CT — energia limpa e baterias)
Comercializadoras de energia, operadores de parques solares e sistemas de armazenamento por baterias (BESS) no Tri-State precisam de monitores leves e confiáveis, que possam rodar em servidores Linux locais, até mesmo em subestações. O objetivo é acompanhar picos de preço em intervalos de cerca de 5 minutos e apoiar a decisão de quando despachar geração ou armazenamento.

> **Nota de segurança operacional:** este script **observa e alerta**. A decisão de acionar equipamentos reais, como baterias, deve passar por um sistema de controle próprio, com regras de segurança, limites e validação. Um script de monitoramento não deve comandar diretamente equipamentos de potência.

---

## 2. Vocabulário essencial

- **NYISO e ISO-NE:** operadores independentes que gerenciam a rede e os mercados de eletricidade de Nova York e da Nova Inglaterra, respectivamente.
- **LMP (Locational Marginal Price):** preço marginal por localização, em dólares por megawatt-hora (MWh). Reflete o custo de atender a próxima unidade de demanda em um ponto específico da rede. Em geral é composto por três partes: custo da energia, congestionamento e perdas.
- **Zona (por exemplo, Zona J):** região de preço dentro do operador. A Zona J da NYISO corresponde à cidade de Nova York.
- **SEMA / NEMA:** zonas de carga da ISO-NE em Massachusetts (sudeste e nordeste do estado).
- **BESS:** sistema de armazenamento de energia por baterias.
- **Média móvel:** média calculada sobre uma janela deslizante dos dados mais recentes.
- **Limiar de alarme:** o valor a partir do qual o monitor considera que algo merece atenção.
- **Polling:** consultar uma fonte periodicamente para ver se há dados novos.

---

## 3. Como o monitor funciona, passo a passo

1. **Escolhe a fonte e a zona.** O usuário informa o operador (NYISO ou ISO-NE), a zona de interesse e o limiar de alarme.
2. **Busca os dados mais recentes.** A cada ciclo, consulta o arquivo CSV público de preços em tempo real.
3. **Extrai o preço da zona.** Seleciona só a linha da zona escolhida, com seu horário.
4. **Atualiza a janela de histórico.** Guarda os últimos preços observados, o suficiente para cobrir a última hora.
5. **Calcula a média móvel.** Resume a tendência recente.
6. **Compara com o limiar.** Se o preço (ou a média) ultrapassa o limite definido, dispara o alerta.
7. **Registra o evento.** Grava a ocorrência no log do sistema.
8. **Arquiva os dados.** Ao fim do dia, a série do dia é compactada e guardada.
9. **Espera o próximo ciclo** e repete.

---

## 4. Decisões de engenharia em Bash, explicadas

### 4.1 Polling a cada 5 minutos: timer ou laço?
Há duas formas de repetir uma tarefa a cada 5 minutos:

- **Laço com pausa:** o script roda para sempre, dormindo entre as consultas. É simples, mas o tempo de cada consulta soma-se à pausa, causando uma deriva lenta no horário. Se o script travar ou o servidor reiniciar, nada o traz de volta.
- **Timer do systemd:** o próprio sistema dispara o script em horários regulares. A vantagem é que ele cuida de reinícios, registra execuções e evita sobreposições, o que o torna a opção mais robusta para um serviço contínuo.

O projeto aceita as duas formas, mas o timer é a escolha mais indicada para operação séria.

### 4.2 Média móvel e detecção de picos com `awk`
O `awk` lê os dados em linha e mantém uma pequena janela de memória com os últimos valores. Com amostras a cada 5 minutos, **60 minutos equivalem a 12 amostras**. A cada novo preço, o valor mais antigo sai da janela, o novo entra e a média é recalculada.

Vale entender a diferença entre dois tipos de gatilho:

- **Limiar sobre o preço instantâneo:** reage rápido, mas pode disparar por um pico de um único intervalo que logo desaparece.
- **Limiar sobre a média móvel:** é mais estável, mas reage com atraso, porque o pico é "diluído" pelos valores anteriores.

Escolher entre os dois (ou combinar) é uma decisão de negócio: depende de quanto custa um falso alarme e de quanto custa perder um pico. Também é útil definir que o alarme só dispare de novo após o preço voltar ao normal, para não gerar uma enxurrada de avisos repetidos durante um mesmo evento.

### 4.3 Tratamento de falhas de rede com `curl`
Redes e servidores falham, e um monitor precisa se recuperar sozinho. O `curl` tem uma opção de **repetir automaticamente** a requisição em caso de falhas temporárias. Dois esclarecimentos importantes:

- A repetição automática vale para falhas **consideradas temporárias**, como tempo esgotado ou certos erros do servidor. Outros tipos de falha, como uma conexão recusada, podem exigir opções adicionais para serem repetidos.
- Quando se **define um intervalo fixo** entre as tentativas, o `curl` passa a usar esse valor constante e **deixa de usar a espera crescente** (backoff exponencial) que ele aplicaria por padrão. Ou seja, definir o intervalo manualmente e esperar uma espera crescente são coisas que se anulam. Se o objetivo é backoff exponencial, o mais simples é deixar o `curl` usar seu comportamento padrão.

### 4.4 Fusos horários e horário de verão
Preços de energia têm carimbo de hora, e os operadores usam o horário local da região. Na mudança de horário de verão, uma hora do dia **se repete** (no outono) ou **desaparece** (na primavera). Se o monitor ignorar isso, pode contar duas vezes a mesma hora ou perder dados. Registrar tudo em um padrão universal (como UTC) internamente e converter só na hora de exibir é a prática mais segura.

### 4.5 Dados atrasados, ausentes e revisados
Os feeds nem sempre atualizam no horário exato, e os preços em tempo real costumam ser **preliminares**: o operador pode revisá-los depois. O monitor precisa lidar com três situações: dado atrasado (esperar e tentar de novo), dado ausente (não inventar valor) e dado repetido (não contar duas vezes). Também é prudente o monitor avisar quando **parar de receber dados**, porque silêncio pode significar que o próprio monitor quebrou, e não que está tudo calmo.

### 4.6 Integração com o sistema de serviços
O `logger` envia mensagens para o registro central do Linux, que a equipe de infraestrutura já usa para acompanhar o servidor. O `systemd-notify` permite que o script informe ao systemd que está funcionando bem, e isso viabiliza um mecanismo de vigilância (watchdog) que reinicia o serviço se ele parar de responder. Juntos, tornam o monitor um "cidadão" do sistema, em vez de um processo isolado.

### 4.7 Rotação e compactação diária com `gzip`
Um monitor que grava preços a cada 5 minutos acumula muito dado ao longo de meses. Compactar o arquivo de cada dia reduz muito o espaço. Séries temporais em texto comprimem muito bem. Uma alternativa comum é usar o `logrotate`, ferramenta do próprio sistema feita para esse fim.

---

## 5. Ferramentas utilizadas e o papel de cada uma

| Ferramenta | Papel no projeto |
|---|---|
| `curl` | Baixa os feeds de preços, com repetição automática em falhas temporárias. |
| `awk` | Extrai o preço da zona, calcula médias e detecta picos. |
| `logger` | Registra eventos no log central do sistema. |
| `systemd-notify` | Informa ao systemd que o serviço está saudável. |
| `gzip` | Compacta o histórico diário. |

---

## 6. O que o monitor entrega

- **Alertas de pico:** aviso quando o preço ou a média móvel passa do limite.
- **Histórico organizado:** séries diárias compactadas, prontas para análise posterior.
- **Registros operacionais:** o log mostra quando o monitor rodou, quando falhou e quando alertou.

---

## 7. Limitações conhecidas

- **Dados preliminares:** preços em tempo real podem ser revisados depois.
- **Latência da fonte:** o monitor só vê o que o operador já publicou. Há sempre um atraso entre o evento na rede e o dado público.
- **Formato e acesso aos feeds:** endereços, colunas e regras de acesso dos operadores mudam. Parte dos dados de alguns operadores pode exigir cadastro ou credenciais. É preciso conferir na fonte.
- **Preços negativos ou extremos:** podem ocorrer e precisam ser tratados sem quebrar os cálculos.
- **Não é sistema de controle:** o script alerta, e não deve operar equipamentos diretamente.
- **Limiar fixo:** um valor único pode ser inadequado entre estações e horários do dia. Pode ser necessário ajustá-lo ao longo do tempo.
- **Horário de verão:** exige tratamento explícito para não duplicar ou perder dados.

---

## 8. Por que Bash para este projeto?

O trabalho é **buscar um arquivo pequeno, extrair um número, atualizar uma média e avisar se passar de um limite**. Esse tipo de tarefa leve e repetitiva combina bem com Bash e `awk`. Bash permite:

- Rodar em servidores modestos, até em locais com poucos recursos, sem instalar nada além de utilitários comuns.
- Integrar-se naturalmente ao systemd, ao `logger` e a outras peças do Linux.
- Manter um código curto, fácil de revisar e de entregar a quem opera o sistema.

O ponto de atenção é que um monitor de operação contínua precisa ser **robusto contra falhas silenciosas**: dados atrasados, fusos horários, quedas de rede e fontes que mudam de formato. Quanto mais crítica a decisão apoiada pelo monitor, mais importante é testar esses cenários.

---

## 9. Exemplo de uso (descrição)

A execução recebe o operador desejado (por exemplo, NYISO), a zona a acompanhar (por exemplo, a Zona J, de Nova York), o limiar de preço que dispara o alerta e a opção de rodar de forma contínua, como serviço. As demais opções estão descritas no cabeçalho de ajuda do próprio script.