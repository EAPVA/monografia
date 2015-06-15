#!/bin/bash
pdflatex Monografia
if [[ $# -ne 0 ]]; then
	exit 1
fi

bibtex Monografia
if [[ $# -ne 0 ]]; then
	exit 1
fi

pdflatex Monografia
if [[ $# -ne 0 ]]; then
	exit 1
fi

pdflatex Monografia
if [[ $# -ne 0 ]]; then
	exit 1
fi
