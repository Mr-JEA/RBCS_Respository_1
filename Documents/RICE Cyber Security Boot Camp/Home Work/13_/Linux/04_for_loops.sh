#! /bin/bash
# Lists for Loops



# Varible created indicating my 5 fav. states
States=("California", "Hawaii", "New York", "Texas", "Illinois")

# Determine if Hawaii is liked or not
for state in ${States[@]}
do
	if [ $States=='Hawaii' ];
	then
	echo "Hawaii is the best!"
	else
	echo "I'm not a fan of Hawaii."
	fi
done

# Varilbe of numbers ranging from zero to nine
numbers=$(echo {0..9})

# Print a for look using numbers 3, 5, 7
for num in ${numbers[@]}
do
	if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
	echo $num
	fi
done

# Varible that has an output or return of the ls command
dir=$(ls)

# use a for loop for the ls command
for n in ${dir[@]}
do
echo $n
done

# Create a Varible for the 777 Files
Files=$(find / -type f -perm 777)
for file in ${Files[@]}
do
echo $file
done
