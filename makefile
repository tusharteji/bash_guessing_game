all: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "" >> README.md
	echo "**The date and the time at which MAKE was run:**" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "*Number of lines of code contained in guessinggame.sh:*" >>README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md 

clean:
	rm README.md	
