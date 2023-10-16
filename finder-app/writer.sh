writefile=$1
writestr=$2
if [ -n "$writefile" ] && [ -n "$writestr" ]
then
	echo Proceed
	dirPath=$(dirname $writefile)
	echo path is : $dirPath
	mkdir -p $dirPath
	touch $writefile
	echo "$writestr" > $writefile
	exit 0
else
	echo Error 1 : Either one or both argumetns don\'t exist.
	exit 1
fi
