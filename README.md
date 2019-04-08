# Teste CI

Projeto de teste de integração contínua usando Maven, Artifactory, Gitlab e TeamCity.

## Overview

Este projeto de teste contém 3 projetos Maven:
- modulo-dependencia
- modulo-teste1
- modulo-teste2

Os projetos `modulo-teste1` e `modulo-teste2` possuem dependência com o projeto `modulo-dependencia`.

## Endereços de acesso

- Artifactory: http://localhost:9001
- TeamCity: http://localhost:9002
- Gitlab: http://localhost:9003
  - HTTPS: http://localhost:9443
  - SSH: http://localhost:9022

## Configurações

### Artifactory

- Acesse o endereço acima relacionado ao Artifactory;
- Crie a senha do administrador;
- Se houver proxy para configurar, preencha-o;
- Selecione o tipo de repositório `Maven` na lista de opções e conclua a configuração inicial;
- No campo *Set Me Up*, clique no `libs-release`, copie as configurações de distribuição e cole no `pom.xml` dos projetos.
- Repita o passo acima para o `libs-snapshot`.

### TeamCity

- Acesse o endereço acima relacionado ao Artifactory;
- Crie a senha do administrador. (TODO: concluir)
