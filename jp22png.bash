#!/usr/bin/env bash

for f in *_rotated.jp2; do convert "$f" -type truecolor "${f%.*}.png"; done
