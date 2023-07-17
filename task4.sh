#!/bin/bash
echo " enter number of ids"
read z


for n in {1..$z}; 
do
    echo "HOST , IP ADDRESS and PUBLIC KEY ?"
    read a
    read b 
    read c
    
     cat ~/$c | ssh $a@$b "cat >> ~/.ssh/authorized_keys"
     ssh $a@$b "sort -u ~/.ssh/authorized_keys | tee ~/.ssh/authorized_keys"     
    

    exit
   
done

