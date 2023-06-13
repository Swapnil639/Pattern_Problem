#!/bin/bash

# Set the number of rows in the pyramid
rows=4

# Loop through each row
for ((i=1; i<=rows; i++))
do
  # Print the spaces for the current row
  for ((j=1; j<=rows-i; j++))
  do
    echo -n " "
  done

  # Print the asterisks for the current row
  for ((j=1; j<=2*i-1; j++))
  do
    echo -n "*"
  done

  # Move to the next line
  echo ""
done
