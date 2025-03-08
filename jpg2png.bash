#!/usr/bin/env bash

for f in *.jpg; do convert "$f" -type truecolor "${f%.*}.png"; done
