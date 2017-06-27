#!/bin/bash

echo "Generating CA1 data."
echo -n "Output to $2 "

count=1

> $2

while [ $count -le $1 ]
do
	##generates a random number to serve as a student number
    studentnumber=`od -A n -t d -N 1 /dev/urandom` 
	
	##generates a random string to simulate a hashed student name
    studentnamehash=`cat /dev/urandom | tr -cd "[:alnum:]" | head -c $randomnumber`
	
	##generates a random number to act as a seed to generate CA1 score
    randomnumber=`od -A n -t d -N 1 /dev/urandom` 
    ca1score=$(($randomnumber % 30))

	##generates a random number to act as a seed to generate CA2 score
    randomnumber=`od -A n -t d -N 1 /dev/urandom` 
    ca2score=$(($randomnumber % 20))

	##generates a random number to act as a seed to generate Exam score
    randomnumber=`od -A n -t d -N 1 /dev/urandom` 
    examscore=$(($randomnumber % 50))

	finalscore = $ca1score + $ca2score + $examscore
	
    if [ $finalscore -lt 40 ]
    then 
        gradetype="Fail"
    elif [ $finalscore -lt 50 ]
    then
        gradetype="Pass"
    elif [ $finalscore -lt 60 ]
    then
        gradetype="II-2"
    elif [ $finalscore -lt 70 ]
    then
        gradetype="II-1"
	elif [ $finalscore -le 100 ]
    then
        gradetype="I"
    fi

    randomletter=`cat /dev/urandom | tr -dc 'A-Z' | head -c 1` 

    now=`date` 
    randomnumber=`echo $randomnumber | sed -e "s: *::g"` 
    echo "$count,$studentnumber,$studentnamehash,$ca1score,$ca2score,$examscore,$finalscore,$gradetype" >> $2

    count=$(($count + 1))
    if [ $(($count % 500)) -eq 0 ]
    then
        echo "${count}"
    fi
done
echo " Output complete."
