#!/bin/bash
SEARCHPATH=$1
FINDEXT="*.png"

for f in `find $SEARCHPATH -type f -name $FINDEXT` ; do
  b64="$(cat ${f} | base64)"
  echo "\n${f}\n"
  echo "${b64}"
  echo "\n\n"
done
