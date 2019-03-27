printf "=====\nGuess how many files are in the current directory?\n=====\n"
read guess

function mkfiles {
    local random_num=$((RANDOM % 10))
    eval touch file{1..$random_num}.txt
}
function rmfiles {
    for file in $(ls)
    do
        if [[ $file =~ file[0-9].txt ]]
        then
            rm $file
        fi
    done
}

rmfiles
mkfiles
files_num=$(ls | wc -l)
end=false

while [[ $end = false ]]
do
    if [[ $guess =~ [^0-9] ]]
    then
        echo please print a number!
        read guess
    elif [[ $guess -lt $files_num ]]
    then
        echo "Too low!"
        read guess
    elif [[ $guess -gt $files_num ]]
    then
        echo "Too high!"
        read guess
    elif [[ $guess -eq $files_num ]]
    then
        printf "+---- You win -----+\n| CONGRADULATIONS! |\n+------------------+\n\n\n"
        let end=true
    else
        echo "ERROR!"
        let end=true
    fi
done
rmfiles