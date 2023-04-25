#!/bin/bash

n=$*
o=$1 #Denoting variables for positional arguments
p=$2
q=$3

s=${o::2} #String slicing 

touch [$s]_[$2]_[$3]_A9.csv #Creating a new file

echo Filename = $1 , Fieldname = $2 , Field Value = $3 , number of entries found in $1 with matching field values: >> [$s]_[$p]_[$q]_A9.csv

grep -i $3 $1 | wc -l | cat >> [$s]_[$2]_[$3]_A9.csv

head -1 $o | cat >> [$s]_[$2]_[$3]_A9.csv #Adding Headers to the file

grep -i $3 $o | cat >> [$s]_[$2]_[$3]_A9.csv # adding the records with the field value to the file
