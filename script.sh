#!/bin/bash


var=$1

build_arg=""
target=""

# Trata os argumentos passados ao script
while [[ $# -gt 0 ]]; do
  case "$1" in
    --build-arg)
      build_arg="--build-arg $2"
      shift 2
      ;;
    --target)
      target="--target $2"
      shift 2
      ;;
    *)
      echo "Argumento desconhecido: $1"
      exit 1
      ;;
  esac
done

echo "arg : $build_arg"

echo "target : $target"

# Executa o comando Docker build
docker build $target -t test $build_arg .

# Executa os comandos Docker
docker run -it test bash -c "cat log.txt"
