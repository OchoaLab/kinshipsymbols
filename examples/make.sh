#!/bin/bash

rm *.pdf

cp ../kinshipsymbols.sty .

# each example doesn't have to be rerun more than once, there's no refs they really depend on
pdflatex test-vanilla
pdflatex test-color
pdflatex test-noT
pdflatex test-color-noT

rm kinshipsymbols.sty
rm *.aux
rm *.nav
rm *.snm
rm *.log
rm *.out
rm *.toc
rm *~

# create PNG of one version...
# this is the command used to get the image preview used on GitHub
magick -density 300 test-color.pdf -resize '800x600' -flatten test-color.png
