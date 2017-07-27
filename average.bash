#!/bin/bash

echo 'Enter numbers to average, one at a time'
echo 'Use ^D to finish'

n=0
average=0

while read -r i junk; do
  average=$( dc -e "7k $average $n * $i + 1 $n + / p" )
  n=$(( n + 1 ))
  echo "Running Average: $average"
done

echo "Final average of $n numbers: $average"
