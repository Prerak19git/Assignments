#!/bin/bash
freq_of_200=$(awk '{print $9}' test.log | grep 200 | wc -l)
echo "The number of HTTP 200 errors is $freq_of_200"
while read -r line
do
     freq=$(awk '{print $9}' test.log | grep $line | wc -l)
     echo "Error code $line has $freq occurances"

   
done < uniques.txt
