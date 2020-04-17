#!/bin/bash
echo Name Of College 
read college
echo Semester Number
read sem
while :
do
clear
echo "Select option"
echo "1.Add Marksheet"
echo "2.Update Marksheet"
echo "3.Delete Marksheet"
echo "4.View Marksheet"
echo "5.Exit"
read -p "ENTER YOU CHOICE:-" usr_cmd
clear

case $usr_cmd in
1)	echo -----------------------------------
	echo '\t Student Mark List'
	echo -----------------------------------
	echo Enter the Student name
	read name
	echo Enter the Roll number
	read rno
	echo Enter the Mark of Subject 1
	read m1
	echo Enter the Mark of Subject 2
	read m2
	echo Enter the Mark of Subject 3
	read m3
	echo Enter the Mark of Subject 4
	read m4
	echo Enter the Mark of Subject 5
	read m5
	tot=$(expr $m1 + $m2 + $m3 + $m4 + $m5)
	avg=$(expr $tot / 5)
	
	if [ $m1 -ge 35 ] && [ $m2 -ge 35 ] && [ $m3 -ge 35 ] && [ $m4 -ge 35 ] && [ $m5 -ge 35 ]
	then
	result="pass"
	
	if [ $avg -ge 90 ]
	then
	grade="S"
	elif [ $avg -ge 80 ]
	then
	grade="A"
	elif [ $avg -ge 70 ]
	then
	grade="B"
	elif [ $avg -ge 60 ]
	then
	grade="C"
	elif [ $avg -ge 50 ]
	then
	grade="D"
	elif [ $avg -ge 35 ]
	then
	grade="E"
	fi
	else
	result="fail"
	grade="no grade"
	fi
	
	n=$(( $n - 1 ))
	
	echo "
	College name :$college
	Semester Number :sem $sem
	Student Name :$name  
	Roll Number:$rno 
	Marks of Subject 1 :$m1 
	Marks of Subject 2 :$m2 
	Marks of Subject 3 :$m3 
	Marks of Subject 4 :$m4 
	Marks of Subject 5 :$m5  
  	Total :$tot  
  	Average :$avg
	Grade :$grade
	Result :$result" >$rno-$name.txt
	echo SAVED
;;
2)echo "Enter the Roll number to update" 	
  read rno
  
  cat *"$rno"*.txt
  
  rm *"$rno"*.txt
    echo Enter the Student name
	read name
    echo Update the Roll number
	read rno
	echo Update the Mark of Subject 1
	read m1
	echo Update the Mark of Subject 2
	read m2
	echo Update the Mark of Subject 3
	read m3
	echo Update the Mark of Subject 4
	read m4
	echo Update the Mark of Subject 5
	read m5
	tot=$(expr $m1 + $m2 + $m3 + $m4 + $m5)
	avg=$(expr $tot / 5)
	
	if [ $m1 -ge 35 ] && [ $m2 -ge 35 ] && [ $m3 -ge 35 ] && [ $m4 -ge 35 ] && [ $m5 -ge 35 ]
	then
	result="pass"
	
	if [ $avg -ge 90 ]
	then
	grade="S"
	elif [ $avg -ge 80 ]
	then
	grade="A"
	elif [ $avg -ge 70 ]
	then
	grade="B"
	elif [ $avg -ge 60 ]
	then
	grade="C"
	elif [ $avg -ge 50 ]
	then
	grade="D"
	elif [ $avg -ge 35 ]
	then
	grade="E"
	fi
	else
	result="fail"
	grade="no grade"
	fi
    
	echo "
	College name :$college
	Semester Number :$sem
	Student Name :$name  
	Roll Number:$rno 
	Marks of Subject 1 :$m1 
	Marks of Subject 2 :$m2 
	Marks of Subject 3 :$m3 
	Marks of Subject 4 :$m4 
	Marks of Subject 5 :$m5  
  	Total :$tot  
  	Average :$avg
	Grade :$grade
	Result :$result" >$rno-$name.txt
	echo UPDATED
	
  
;;
3)echo "Enter the Roll number or Name to delete"
  read rno
  rm *"$rno"*.txt
  echo DELETED
;;
4)echo "Enter the Roll number or Name to view"
  read rno
  cat *"$rno"*.txt
;;
5)break;;
esac;

read -p "Hit Enter to Return to Main Menu:   " confirm_exit
done
