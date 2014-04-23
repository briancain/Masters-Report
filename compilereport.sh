#! /bin/bash

# Brian Cain
#
# Stop wasting your time with
# pdflatex and bibtex. Just
# run this script.

REPORT_NAME=BrianCain2014

REPORT_TEX="$REPORT_NAME.tex"
REPORT_BIB="$REPORT_NAME.aux"

echo "Compiling report..."

# -shell-escape is for the minted
# latex package for code embeding.
# If you are not using minted remove
# the flag.

pdflatex -shell-escape $REPORT_TEX
bibtex $REPORT_BIB
pdflatex -shell-escape $REPORT_TEX
pdflatex -shell-escape $REPORT_TEX

echo "Complete!"
