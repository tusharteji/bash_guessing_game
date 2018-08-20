function guessinggame {
printf "\033c"
echo "Welcome to the Guessing Game"
echo ""

## ls -l : This will result in a list containing files as well as folders.
## Using egrep to find those lines in the list that neither start with d or t.
## This will remove folders (since we are supposed to count only files) and
## the first line that says total=0, from the list. Finally, wc -l to calculate
## the number of lines in the list.

numoffiles=$(ls -l | egrep -v "^d|^t" | wc -l)
echo "Guess how many files are there in the current directory?"
read guess
if [[ $guess =~ [0-9]+ ]] && [[ ! $guess =~ [a-zA-Z] ]]
then
	while [[ $guess -ne $numoffiles ]]
	do
		if [[ $guess -gt $numoffiles ]]
		then
			echo "Your number is too HIGH."
		else
			echo "Your number is too LOW."
		fi
		echo "Guess again"
		read guess
		while [[ $guess =~ [a-zA-Z] ]]
		do
			echo "Wrong input, Guess again"
			read guess
		done
	done
echo ""
echo "Congratulations, you've hit the bulls eye!"
echo ""
echo "Thanks for playing the Guessing Game."
echo ""
else	echo "Wrong input, Try next time"
fi
}
