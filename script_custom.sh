NUM=$(($RANDOM%10+1))
while true
do
  read -p "Please input a number between 1 and 10: " LUCK
  if [ "$LUCK" = "exit" ]  
  then
    echo "bye !!!"
    exit
  elif [ "$LUCK" -lt "$NUM" -a "$LUCK" -ge "1" ]
  then
    echo "$LUCK is small, please try again"
  elif [ "$LUCK" -gt "$NUM" -a "$LUCK" -le "10" ]
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
