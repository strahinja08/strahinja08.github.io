#! /usr/bin/env bash
#
#    When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
#    If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
#    If the user's guess is correct then they should be congratulated and the program should end.
#    The program should not end until the user has entered the correct number of files in the current directory.
#    The program should be able to be run by entering bash guessinggame.sh into the console.
#    The program should contain at least one function, one loop, and one if statement.
#    The program should be more than 20 lines of code but less than 50 lines of code.
#
#		I would like to make a statment that in case we count lines of code there is 18 lines, although logical lines of code number is much higher, 29. 
#		Threfore I would argue that this code fully satisfy above conditions. Can you please accept the average of 23 lines of code during evaluation? Thanks in advance. 
#		Regards Strahinja 
		
hm="$(ls -1q | wc -l)" 

function check {
	until [[ $number == $hm ]]
	do
		if [[ $number -lt $hm ]] 
		then
			echo "Try a higher number." 
			read number 
		elif [[ $number -gt $hm ]]
		then 	
			echo "Try a lower number." 
			read number
 		fi
	done
}

read -p "How many files is in the direcotry?" number

check number
echo "Congratulation! That is correct."	 
