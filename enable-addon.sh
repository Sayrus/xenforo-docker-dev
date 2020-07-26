#!/bin/sh

XENFORO_FOLDER="xenforo"

if [ "$#" -ne 1 ]; then
  echo "Usage: ./enable-addon <addon_folder>"
  echo "Your addon must have the following directory structure:"
  echo "."
  echo "├── js"
  echo "├── src"
  exit 1
fi

echo "Enabling $1 in $XENFORO_FOLDER"

SRC_DESTINATION_FOLDER="$XENFORO_FOLDER/src/addons/"
SRC_REALPATH=$(realpath --relative-to="$SRC_DESTINATION_FOLDER" "$1/src")

JS_DESTINATION_FOLDER="$XENFORO_FOLDER/js/"
JS_REALPATH=$(realpath --relative-to="$JS_DESTINATION_FOLDER" "$1/js")

ln -Tsf "$SRC_REALPATH" "$SRC_DESTINATION_FOLDER/$(basename "$1")"
ln -Tsf "$JS_REALPATH" "$JS_DESTINATION_FOLDER/$(basename "$1")"
