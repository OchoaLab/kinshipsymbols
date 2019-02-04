#!/bin/bash

# cleanup
# remove files that are normally part of the package but are derivatives of other files
rm kinshipsymbols.pdf
rm kinshipsymbols.sty

# compile package

latex kinshipsymbols.ins

cd ./examples
bash ./make.sh
cd ..

pdflatex kinshipsymbols.dtx
pdflatex kinshipsymbols.dtx

makeindex -s gglo.ist -o kinshipsymbols.gls kinshipsymbols.glo
makeindex -s gind.ist -o kinshipsymbols.ind kinshipsymbols.idx

pdflatex kinshipsymbols.dtx

# cleanup
# remove junk files that shouldn't be committed
rm *.aux
rm *.glo
rm *.gls
rm *.idx
rm *.ilg
rm *.ind
rm *.log
rm *.toc
rm *.out
