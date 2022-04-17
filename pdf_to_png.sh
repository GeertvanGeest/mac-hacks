#!/bin/bash

INDIR=$1

cd $INDIR

for PDF in *.pdf
do
    BASENAME=${PDF%.pdf}
    sips -s format png $PDF --out $BASENAME.png
done
