#!/usr/bin/env bash

# Este script usa o docker para executar uma imagem preparada com todos os
# prerequisitos necessários para compilar a monografia. Para usar este script o
# computador só precisa ter instalado o docker. Nenhum outro requisito é
# necessário, nem mesmo o LaTeX é necessário, pois a imagem possui LaTeX e as
# dependências das normas da UTFPR. Por isso a imagem é consideravemente grande.
# Da primeira vez que o script for executado a imagem será baixada do registry e
# armazenada no computador local. A partir deste ponto a compilação do PDF final
# deve ser quase imediato.

docker run --rm -it -v $(pwd):/mnt gcr.io/site-fdk/utfpr-latex-builder \
	bash -c "cd /mnt; ./build.sh"
