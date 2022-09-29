#!bin/bash
NUM=$(($RANDOM%100+1))
while true
do
  read -p "Please input a number between 1 and 100: " LUCK
  if [ "$LUCK" = "exit" ]  
  then
    echo "bye !!!"
    exit
  elif [ "$LUCK" -lt "$NUM" -a "$LUCK" -ge "1" ]
  then
    echo "$LUCK is small, please try again"
  elif [ "$LUCK" -gt "$NUM" -a "$LUCK" -le "100" ]
  then
    echo "$LUCK is big, please try again"
  elif [ "$LUCK" = "$NUM" ] 
  then
    echo "Congratuations !!! The number is $NUM"
    exit
  else  
    echo "Error: The input number is out of range !!!"
  fi
done
