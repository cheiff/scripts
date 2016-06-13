#!/bin/bash
if [ $# = 1 ]; then
  echo "git commit -m $1"
  git commit -m "$1"
  echo "Branches"
  git branch

else
  echo "Sintaxis: gcm \"Comentario commit git\""
fi
