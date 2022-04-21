#!/bin/bash

MOV=$1

BASENAME=${MOV%.mov}

# -s 640x480
ffmpeg  -i $MOV -pix_fmt rgb24 -r 10 $BASENAME.gif

# optimizing
# needs imagemagick
# convert -layers Optimize tmp.gif $BASENAME.gif
