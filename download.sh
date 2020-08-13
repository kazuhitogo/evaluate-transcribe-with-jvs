#!/bin/bash
# Google Driveからダウンロードしてくる
# カレントディレクトリのaudio.zipに吐き出される 
FILE_NAME="audio.zip"
 
if [ ! -e ${FILE_NAME} ];then
  rm ./${FILE_NAME}
fi

FILE_ID=19oAw8wWn3Y7z6CKChRdAyGOB9yupL_Xt
FILE_NAME=audio.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=${FILE_ID}" -o ${FILE_NAME}
exit

