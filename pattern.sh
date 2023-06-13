#!/bin/bash

rows=3

for ((i=1; i<=rows+1; i++))
do
  for ((j=1; j<=i-1; j++))
  do
    echo -n " "
  done

  for ((j=1; j<=2*(rows+1-i)-1; j++))
  do
    echo -n "*"
  done

  echo ""
done

for ((i=rows; i>=1; i--))
do
  for ((j=1; j<=i-1; j++))
  do
    echo -n " "
  done

  for ((j=1; j<=2*(rows+1-i)-1; j++))
  do
    echo -n "*"
  done

  echo ""
done
