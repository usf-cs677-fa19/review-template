#!/usr/bin/env bash

# This script uses pdflatex to build (in case latexmk is not available).

name=review

pdflatex -interaction=batchmode ${name}
bibtex ${name}
pdflatex -interaction=batchmode ${name}
pdflatex -interaction=nonstopmode ${name}

