#!/bin/bash

# Set the number of rows in the diamond
rows=3

for ((i=1; i<=rows+1; i++))
do
  for ((j=1; j<=rows+1-i; j++))
  do
    echo -n " "
  done

  for ((j=1; j<=2*i-1; j++))
  do
    echo -n "*"
  done

  echo ""
done

for ((i=rows; i>=1; i--))
do

  for ((j=1; j<=rows+1-i; j++))
  do
    echo -n " "
  done

  for ((j=1; j<=2*i-1; j++))
  do
    echo -n "*"
  done

  echo ""
done
