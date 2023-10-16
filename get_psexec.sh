#!/bin/bash
if [ -z $(command -v unzip) ]; then
    echo "unzip" binary not found. exiting..
else
  wget https://download.sysinternals.com/files/PSTools.zip
  unzip PSTools.zip PsExec.exe -d .
  rm -f ./PSTools.zip
fi
