#!/usr/bin/env bash

FILE='/Users/zpl/Desktop/1891AD-Arthur-Edward-Waite-The-Occult-Sciences.pdf'
NUMPAGES=312
COUNTER=0
mkdir pdf2pngs.temp
cd pdf2pngs.temp
while [[ "$COUNTER" -lt "$NUMPAGES" ]]; do
    convert -density 150 -quality 100 -background white -alpha remove -alpha off ${FILE}[${COUNTER}] page${COUNTER}.png
    COUNTER=$((COUNTER+1))
done
cp /Users/zpl/Scripts/pngs2pdf.py ./pngs2pdf.py
./pngs2pdf.py ${NUMPAGES}
rm ./page*
rm ./pngs2*
mv result.pdf ../result.pdf
cd ..
rmdir pdf2pngs.temp
