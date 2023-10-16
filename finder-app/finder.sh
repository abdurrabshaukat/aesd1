#/bin/bash

filesdir=$1
searchstr=$2

echo this script tests if two arguements: $1 and  $searchstr are received, and if the first is a directory and second  is a string
 
if [ -n "$filesdir" ] && [ -n "$searchstr" ]
then
	if [ -d "$filesdir" ]
	then 
		echo $filesdir is a directory  and search string is: $searchstr
		noOfFiles=$(find $filesdir -type f | wc -l)
		noOfMatchingLines=$(grep -rni "$searchString" "$filesdir" | wc -l)
		echo No of files in $filesdir is $noOfFiles and no of matching lines is $noOfMatchingLines
	        exit 0
	else
		echo Error 1: $filesdir is not a directory
		exit 1
	fi
else
	echo Error 2: Either one or both of the arguments are not specified.
	exit 1
fi 

