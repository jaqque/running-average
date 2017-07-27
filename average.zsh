#!/bin/zsh

echo 'Enter numbers to average, one at a time'
echo 'Use ^D to finish'

n=0
average=0.0

while read -r i junk; do
  average=$(( (average * n++ + i) / n ))
  echo "Running Average: $average"
done

echo "Final average of $n numbers: $average"
