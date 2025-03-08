#!/usr/bin/env bash

mkdir pngResizeResults
for f in *.png; do convert "$f" -type truecolor -resize 25% "pngResizeResults/${f%.*}.png"; done
