number_files=$(ls . | wc -l)

function win {
	echo "Congratulations! Your answer is correct :)"
}

echo "How many files are in your current directory?"
echo "Type your answer and then press enter:"
read response

if [[ $response -eq $number_files ]] 
then 
	win
else
	while [[ $response -ne $number_files ]]
	do 
		if [[ $response -gt $number_files ]]
		then 
			echo "Your answer is too high"
			echo "Type a new response:"
			read response
		else
			echo "Your answer is too low"
			echo "Type a new response:"
			read response
		fi
	done
	if [[ $response -eq $number_files ]]
	then
        	win
	fi
fi	
 
