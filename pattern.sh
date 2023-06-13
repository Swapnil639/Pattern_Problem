#!/bin/bash

echo "Select a pattern to print:"
echo "1. Left Pyramid"
echo "2. Right Pyramid"
echo "3. Pyramid"
echo "4. Inverted Pyramid"
echo "5. Diamond"
echo "6. Hour Glass"

read choice

echo "Enter the number of rows:"
read rows

case $choice in
  1)
    # Print the left pyramid
    for ((i=1; i<=rows; i++))
    do
      for ((j=1; j<=i; j++))
      do
        echo -n "*"
      done
      echo ""
    done
    ;;
  2)
    # Print the right pyramid
    for ((i=1; i<=rows; i++))
    do
      for ((j=1; j<=rows-i; j++))
      do
        echo -n " "
      done
      for ((j=1; j<=i; j++))
      do
        echo -n "*"
      done
      echo ""
    done
    ;;
  3)
    # Print the pyramid
    for ((i=1; i<=rows; i++))
    do
      for ((j=1; j<=rows-i; j++))
      do
        echo -n " "
      done
      for ((j=1; j<=2*i-1; j++))
      do
        echo -n "*"
      done
      echo ""
    done
    ;;
  4)
    # Print the inverted pyramid
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
    ;;
  5)
    # Print the diamond
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
    ;;
  6)
    # Print the hourglass
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
    ;;
  *)
    echo "Invalid choice. Please try again."
    ;;
esac
