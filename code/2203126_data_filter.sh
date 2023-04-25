#!/bin/bash

n=$*
o=$1 #Variables for positional arguments
p=$2
q=$3

s=${o::2} #String slicing 

touch [$s]_[$2]_[$3]_A9.csv #Creating a new file

echo Filename = $1 , Fieldname = $2 , Field Value = $3 , number of lines found in $1 is 500, along with Header >> [$s]_[$p]_[$q]_A9.csv

head -1 $o | cat >> [$s]_[$2]_[$3]_A9.csv #Adding Headers to the file

grep -i $3 $o | cat >> [$s]_[$2]_[$3]_A9.csv # adding the records with the field value to the file
