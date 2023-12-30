#!/bin/sh
writefile=$1
writestr="$2"

if [ $# -ne 2 ]
then
   echo "Usage: $0 writefile wrtiefilestr"
   exit 1
fi
foldername=$(dirname ${writefile})
if ! [ -d ${foldername} ]
then
   mkdir -p ${foldername}
fi

echo "${writestr}" > ${writefile}
if ! [ -e ${writefile} ]
then
   echo "Failed to write ${writestr} to file ${writefile}"
   exit 1
fi


