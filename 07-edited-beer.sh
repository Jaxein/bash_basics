#!/bin/sh

echo "Let's sing a beer song"
echo "How many bottles?"
read count

while [ $count -ge 0 ]; do
  if [ $count -ge 2 ]; then
      echo "$count bottles of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  elif [ $count -eq 1 ]; then
      echo "$count bottle of beer on the wall, $count bottles of beer"
      echo "Take one down pass it around"
  else
      echo "no more bottles of beer on the wall"
  fi
  
  # the following statement is equivalent to: let "count=count-1"
  ((count = count - 1))
done
# exercise: implement another counting song (such as 12 days of Christmas) 
# using loops and if statements.
echo "Enter 2 or 1"
read count
while[ $count -ge 0 ]; do
  if[ $count -ge 2]; then
    echo "on the $count day of Christmas,"
    echo "my true love gave to me, two turtle doves and a partridge in a pear tree."
  elif[ $count -ge 1]; then
    echo "on the $count day of Christmas,"
    echo "my true love gave to me, a partridge in a pear tree."
  else
    echo "And a partridge in a pear tree!"
  fi
  
  (($count = $count - 1))   

done 

