#ask and get the response
echo 'How many files exist in the current directory?'
read response

#count the number of files in the directory
count=$(ls -1 | wc -l)

#feedback function
function determination {
	if [[ $1 -gt $2 ]]
        then
                echo 'It is too high'
        else
                echo 'It is too low'
        fi
}

#determine whether the response is right, feedback, and get another response
while [[ $response -ne $count ]]
do
	determination $response $count
	echo 'How many files exist in the current directory?'
	read response
done
echo 'Congratulation! You are right!'


	 
