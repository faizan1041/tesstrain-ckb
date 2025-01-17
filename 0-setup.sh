#!/bin/bash
export PYTHONIOENCODING=utf8
ulimit -s 65536
SCRIPTPATH=`pwd`

mkdir -p $SCRIPTPATH/data
mkdir -p $SCRIPTPATH/data/script/Arabic

wget -O $SCRIPTPATH/data/Latin.unicharset  https://github.com/tesseract-ocr/langdata_lstm/raw/main/Latin.unicharset
wget -O $SCRIPTPATH/data/Arabic.unicharset  https://github.com/tesseract-ocr/langdata_lstm/raw/main/Arabic.unicharset
cp ~/langdata_lstm/Inherited.unicharset $SCRIPTPATH/data/

# cp ~/tessdata_fast/ara.traineddata $SCRIPTPATH/data/fast_ara.traineddata
# cp ~/tessdata_fast/script/Arabic.traineddata $SCRIPTPATH/data/fast_Arabic.traineddata

wget -O $SCRIPTPATH/data/fast_ara.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/main/ara.traineddata
wget -O $SCRIPTPATH/data/fast_Arabic.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/main/script/Arabic.traineddata
