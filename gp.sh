#!/bin/bash
if [ $# = 1 ]; then
  echo "git add ."
  git add .
  echo "git commit -a -m $1"
  git commit -a -m "$1"
  echo "Branches"
  git push 
  git branch
else
  echo "Sintaxis: gcm \"Comentario commit git\""
fi
