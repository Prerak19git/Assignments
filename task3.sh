echo "Enter your password --"
read password
sz=${#password}
a=0
b=0
c=0
d=0

if [ $sz -gt 9 ]; then a=1;fi; 
for ((i=0;i<sz;i++)); do
    char=${password:i:1}
    if [[ $char == [A-Z] ]];
    then
     c=1
    elif [[ $char == [a-z] ]];
    then
    b=1
    elif [[ ! $char == [0-9] ]];
    then
    d=1
    fi    

done


z=$(($a + $b + $c + $d))

if [ $z -eq 4 ];
then
echo "The password is STRONG"
elif [ $z -eq 3 ];
then
echo "The password security is HIGH"
elif [ $z -eq 2 ];
then
echo "The password security is MEDIUM";
else
echo "The password security is LOW";
fi
  
 

