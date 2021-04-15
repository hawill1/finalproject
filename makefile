all: README.md

README.md: 
	echo "Hannah's Guessing Game!" > README.md
	date "+Make was run at %T on %D." >> README.md	
	echo "Number of lines in guessinggame.sh=" >> README.md  
	wc -l guessinggame.sh >> README.md	
