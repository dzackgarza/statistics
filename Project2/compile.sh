#!/bin/bash

export PATH=$PATH:/usr/texbin:/usr/local/bin
R CMD Sweave "$1"
pdflatex "${1%.*}"
rm *.log *.out *.aux
