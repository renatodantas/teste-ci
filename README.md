# Teste CI

Projeto de teste de integração contínua usando Maven, Artifactory, Gitlab e TeamCity.

O intuito deste projeto é testar o fluxo de integração contínua do conjunto citado acima e validando as configurações corretas no POM do projeto.

## Overview

Este projeto de teste contém 3 projetos Maven:
- ci-modulo-dependencia
- ci-modulo-1
- ci-modulo-2

Os projetos `ci-modulo-1` e `ci-modulo-2` possuem dependência com o projeto `ci-modulo-dependencia`.

### Iniciar e desligar ambientes

- No diretório do projeto, digite `docker-compose up -d` para subir os ambientes. O Docker tratará de baixar as imagens dos sistemas (caso ainda não o tenha feito) e criará os containers. A inicialização completa pode demorar alguns segundos a mais que o esperado.

- Para desligar, digite `docker-compose down`.

> OBS.: Para desligar limpando os volumes com os dados salvos, digite `docker-compose down -v`.

### Endereços de acesso

- Artifactory: http://localhost:9001
- TeamCity: http://localhost:9002
- Gitlab: http://localhost:9003
  - HTTPS: http://localhost:9443
  - SSH: http://localhost:9022

## Configurações

Abaixo o passo-a-passo para inicializar as configurações necessárias em cada um dos serviços e como configurar os POMs do projeto.

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
