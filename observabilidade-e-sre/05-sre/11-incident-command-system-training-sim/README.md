# Simulador de Papéis de Resposta a Incidentes (Incident Commander, Scribe, Tech Lead)

## 1. Cenário de Produção Real
Durante incidentes graves, múltiplas pessoas falavam ao mesmo tempo, gerando confusão e atrasando a contenção do problema.

## 2. O Problema Real
Treinar a equipe no Incident Command System (ICS), separando claramente as funções de liderança, comunicação e execução técnica.

## 3. Arquitetura e Engenharia da Solução
Plataforma de simulação interativa que injeta cenários de desastre fictícios e avalia o cumprimento das atribuições de cada papel.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Incident Command System (ICS), SRE Training, Incident Triage, Role-Playing Drills
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python run_ics_simulation.py --scenario datacenter-fire
```
