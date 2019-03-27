README.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "now is | $(shell date)" >> README.md
	echo "lines in guessinggame.sh | $(shell cat guessinggame.sh | wc -l)" >> README.md