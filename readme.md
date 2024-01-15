# Imagens Docker multi-stage

Semelhante a um `.gitignore` arquivo, podemos adicionar um `.dockerignore` arquivo que impedirá que determinados arquivos sejam incluídos na construção da imagem.

`touch .dockerignore`

Em seguida, exclua os seguintes arquivos da construção da imagem:

```bash
.dockerignore
Dockerfile
.dockerignore
node_modules
npm-debug.log
dist
```

Certifique-se de tornar o script executável com o seguinte comando:

`chmod +x script.sh`
