#!/bin/bash

read -rsp $'Pressione <Enter> para criar os repositorios no GitLab ou <Ctrl+C> para abortar...\n'

DIR_ATUAL=$PWD
for projeto in ci-modulo-dependencia ci-modulo-1 ci-modulo-2; do
    echo "==> Criando repositorio: $projeto"
    cd $DIR_ATUAL/$projeto
    git init
    rm .gitignore
    echo target >> .gitignore
    echo .classpath >> .gitignore 
    echo .project >> .gitignore 
    echo .settings >> .gitignore 
    git add .
    git commit -m "Primeiro commit"
    git push --set-upstream http://localhost:9002/root/$projeto.git master
done

echo "==> Finalizado"