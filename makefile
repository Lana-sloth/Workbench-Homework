README.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "`$(date)`" >> README.md
	echo "There are **$(cat guessinggame.sh | wc -l)** lines in guessinggame.sh file." >> README.md