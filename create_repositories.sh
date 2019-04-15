#!/bin/bash

read -rsp $'Pressione <Enter> para criar os repositorios no GitLab ou <Ctrl+C> para abortar...\n'

DIR_ATUAL=$PWD
DIR_TEMP=/tmp/ci-modulos
for projeto in ci-modulo-dependencia ci-modulo-1 ci-modulo-2; do
    echo "==> Criando repositorio: $projeto"
    
    mkdir -p $DIR_TEMP
    rm -rf /tmp/ci-modulos/$projeto
    cp -R $DIR_ATUAL/$projeto $DIR_TEMP
    cp docker/settings-container.xml $DIR_TEMP/$projeto/
    cd $DIR_TEMP/$projeto
    
    git init
    echo target > .gitignore
    echo .classpath >> .gitignore 
    echo .project >> .gitignore 
    echo .settings >> .gitignore
    git add .
    git commit -m "Primeiro commit"
    git push --set-upstream http://root@localhost:9002/root/$projeto.git master
done

echo "==> Finalizado"