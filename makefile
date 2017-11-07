#	The makefile should produce the README.md which should contain the following information:
#   The title of the project.
#	  The date and time at which make was run.
#	  The number of lines of code contained in guessinggame.sh.

README.md: guessinggame.sh
	touch README.md
	echo "The title of the project: \n Guessing Game" >> README.md
	echo "The date and time at which make was run:" >> README.md
	date >> README.md 
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
  wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
