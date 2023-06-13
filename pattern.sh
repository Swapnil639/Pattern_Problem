#!/bin/bash

rows=3

for ((i=$rows; i>=1; i--))
do
  for ((j=1; j<=$rows-i; j++))
  do
    echo -n " "
  done

  for ((j=1; j<=2*i-1; j++))
  do
    echo -n "*"
  done

  echo ""
done
