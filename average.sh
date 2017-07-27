#!/bin/sh

echo 'Enter numbers to average, one at a time'
echo 'Use ^D to finish'

n=0
average=0

while read -r i junk; do
  average=$( dc -e "7k $average $n * $i + 1 $n + / p" )
  n=$( dc -e "$n 1 + p" )
  echo "Running Average: $average"
done

echo "Final average of $n numbers: $average"
