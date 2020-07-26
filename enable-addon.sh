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

ln -Tsf "$1/src" "$XENFORO_FOLDER/src/addons/$(basename "$1")"
ln -Tsf "$1/js" "$XENFORO_FOLDER/js/$(basename "$1")"
