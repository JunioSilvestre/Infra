# 06-build-e-gerenciamento-de-artefatos — Builds Otimizados e Gerenciamento de Artefatos

Projetos práticos de empacotamento: Docker multi-stage sem root, OCI Registries (Harbor/GHCR), Helm packaging, Semantic Release, artefatos NuGet/npm e compressão de alta performance.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-rootless-multi-stage-docker-packaging/`](./01-rootless-multi-stage-docker-packaging) | **Construção de Imagens Docker Multi-Stage Ultraleves e Não-Privilegiadas (Rootless)** | `docker, buildx, distroless` |
| **02** | [`02-helm-chart-packaging-oci-registry/`](./02-helm-chart-packaging-oci-registry) | **Empacotamento, Versionamento e Publicação de Helm Charts como Artefatos OCI** | `helm, yq, crane` |
| **03** | [`03-buildkit-cache-mounts-acceleration/`](./03-buildkit-cache-mounts-acceleration) | **Aceleração Extrema de Builds Docker com Mounts de Cache no BuildKit** | `docker-buildkit, buildx` |
| **04** | [`04-oci-registry-harbor-tag-immutability-enforcer/`](./04-oci-registry-harbor-tag-immutability-enforcer) | **Enforcer de Imutabilidade de Tags e Políticas de Retenção no Harbor Registry** | `curl, jq, harbor-api` |
| **05** | [`05-multi-arch-manifest-docker-builder/`](./05-multi-arch-manifest-docker-builder) | **Construção de Imagens Multi-Arquitetura (linux/amd64 e linux/arm64) com Manifest Lists** | `docker-buildx, qemu, crane` |
| **06** | [`06-npm-private-package-scoped-publishing/`](./06-npm-private-package-scoped-publishing) | **Publicador Automatizado de Bibliotecas JavaScript/TypeScript Escopadas (@corp/pkg)** | `npm, pnpm, tsc` |
| **07** | [`07-nuget-secure-package-signing-pipeline/`](./07-nuget-secure-package-signing-pipeline) | **Assinatura Criptográfica e Publicação de Pacotes .NET NuGet Corporativos** | `dotnet, openssl, nuget` |
| **08** | [`08-python-wheel-twine-secure-distribution/`](./08-python-wheel-twine-secure-distribution) | **Empacotamento Seguro de Módulos Python Wheels e Distribuição com Twine** | `python3 -m build, twine, pip` |
| **09** | [`09-crane-skopeo-container-sync-mirror/`](./09-crane-skopeo-container-sync-mirror) | **Sincronizador e Espelhador de Imagens de Containers entre Registries com Skopeo e Crane** | `skopeo, crane, jq` |
| **10** | [`10-nexus-repository-cleanup-policy-manager/`](./10-nexus-repository-cleanup-policy-manager) | **Gerenciador e Auditor de Políticas de Expulso (Cleanup Policies) no Sonatype Nexus** | `curl, jq, nexus-api` |
| **11** | [`11-archive-compression-pigz-zstd-benchmark/`](./11-archive-compression-pigz-zstd-benchmark) | **Compressor de Alta Vazão para Artefatos com Zstandard (zstd) e pigz** | `zstd, pigz, tar, pv` |
| **12** | [`12-debian-rpm-package-fpm-builder/`](./12-debian-rpm-package-fpm-builder) | **Empacotador Automatizado de Pacotes Nativos Linux (.deb e .rpm) com FPM** | `fpm, dpkg-deb, rpmbuild` |
| **13** | [`13-artifactory-aql-retention-purger/`](./13-artifactory-aql-retention-purger) | **Purgador Automatizado de Artefatos Órfãos no JFrog Artifactory via AQL** | `curl, jq, jfrog-cli` |
| **14** | [`14-cosign-signature-verifier-admission-check/`](./14-cosign-signature-verifier-admission-check) | **Verificador de Assinaturas Cosign Pré-Deploy em Pipelines e Admission Controllers** | `cosign, jq, bash` |
| **15** | [`15-docker-squash-layer-minimizer/`](./15-docker-squash-layer-minimizer) | **Otimizador e Esmagador de Camadas de Containers (Layer Squashing) para Tamanho Mínimo** | `docker-buildx, docker-squash` |
| **16** | [`16-github-release-asset-checksum-publisher/`](./16-github-release-asset-checksum-publisher) | **Publicador de Releases no GitHub com Geração de Checksums SHA-256 e Assinatura GPG** | `sha256sum, gpg, gh-cli` |
| **17** | [`17-static-assets-cdn-s3-brotli-compression/`](./17-static-assets-cdn-s3-brotli-compression) | **Otimizador de Assets Estáticos com Compressão Prévia Brotli/Gzip para CDN/S3** | `brotli, gzip, aws-s3, aws-cloudfront` |
| **18** | [`18-cargo-rust-cross-compilation-packager/`](./18-cargo-rust-cross-compilation-packager) | **Compilador Cruzado e Empacotador de Binários Rust de Alta Performance com cross** | `cargo, cross, docker` |
| **19** | [`19-dependency-graph-spdx-cyclonedx-validator/`](./19-dependency-graph-spdx-cyclonedx-validator) | **Validador e Verificador de Consistência de Grafos de Dependência SPDX e CycloneDX** | `cyclonedx-cli, jq` |
| **20** | [`20-artifact-registry-quarantine-untrusted-build/`](./20-artifact-registry-quarantine-untrusted-build) | **Quarentena e Validação Automatizada de Artefatos Não Confiáveis antes da Promoção** | `skopeo, crane, jq, bash` |
