# kinshipsymbols: a LaTeX package providing math symbols for papers and presentations in statistical genetics

![Preview of examples/test-color.pdf](examples/test-color.png)

This LaTeX package defines consistent mathematical symbols for statistical genetics, particularly relating to the kinship model and FST.

In addition to providing a long list of symbols, the package has two options that alter the behavior of some of the most common symbols.
Option `color` highlights genotypes (blue), kinship coefficients (dark green), and the standard ancestral allele frequency estimator (red), which is useful for Beamer presentations.
Option `noT` removes the ancestral population T superscript from all symbols that contain it (for simpler presentations).

## Installation

This repository contains the compiled STY file in addition to the source INS and DTX files (see `make.sh` for steps).

You should create a local path for LaTeX packages, if you haven't already done so, and save its value in `$TEXMFHOME`.
For example, if you're in Linux and are going to save things in `~/texmf`, add this to your `.bashrc`:
```bash
export TEXMFHOME=$HOME/texmf
```
The very first time you create this directory you also need to create the `$TEXMFHOME/tex/latex/` subtree:
```bash
mkdir $TEXMFHOME
mkdir $TEXMFHOME/tex
mkdir $TEXMFHOME/tex/latex
```

Now, you also create a subdirectory for this package (also only do the first time)
```bash
mkdir "$TEXMFHOME/tex/latex/kinshipsymbols/"
```

Finally, each time there's an update to this package, you copy the STY file into this other directory.
If the file is in your current directory, then do this:
```bash
cp kinshipsymbols.sty $TEXMFHOME/tex/latex/kinshipsymbols/
```
Then we update the TeX hash, which has to be done as superuser:
```bash
sudo -E texhash
```
The trick `-E` allows local variables (such as our `$TEXMFHOME`) to carry over to the superuser.
