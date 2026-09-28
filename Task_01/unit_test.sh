#!/bin/bash  

#verify that 3 arguments were entered
if [ $# -ne 3 ]; then
	echo "Error: enter 3 arguments"
	exit 1
fi

file="$1"
#check that the argument provides a regular file
if [ ! -f "$file" ]; then
	echo "Error: provide a regular file"
	exit 1
fi

input="$2"
exp_output="$3"
actual_output=$(echo "$input" | "$file")

if [ $actual_output -eq $exp_output ]; then
	echo "PASS"
else 
	echo "FAIL"
	echo "Expected:$exp_output "
	echo "Got: $actual_output"
fi

