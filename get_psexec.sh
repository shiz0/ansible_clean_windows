#!/bin/bash
if command -v unzip > /dev/null
  wget https://download.sysinternals.com/files/PSTools.zip
  unzip PSTools.zip PsExec.exe -d .
  rm -f ./PSTools.zip
else
  echo "unzip" binary not found. exiting..
end
