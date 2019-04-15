#!/bin/bash

read -rsp $'Pressione <Enter> para criar os repositorios no GitLab ou <Ctrl+C> para abortar...\n'

declare -a projetos=("ci-modulo-dependencia" "ci-modulo-1" "ci-modulo-2")
DIR_ATUAL=$PWD

for projeto in "${projetos[@]}"; do
    echo "==> Criando repositorio: $i"
    cd $DIR_ATUAL/$i
    #git init
    #echo target >> .gitignore
    #echo .classpath >> .gitignore 
    #echo .project >> .gitignore 
    #echo .settings >> .gitignore 
    #git add .
    #git commit -m "Primeiro commit"
    #git push --set-upstream http://localhost:9002/root/$i.git master
    
done

echo "==> Finalizado"