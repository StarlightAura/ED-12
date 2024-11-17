#!/usr/bin/bash
#this is the build.sh file
#it builds the 4 .html files
#steps:
#
#check if .css file exists. download if it doesn't
#stop if it errors
#

file=./w3.css
if [[ -e "$file" ]] ; then
	echo "CSS file exists"
else
    wget https://www.w3schools.com/w3css/4/w3.css
    if [[ $? -ne 0 ]] ; then
        echo "Error downloading w3.css"
        exit -1
    fi
fi

./index.sh > ./index.html
./pag1.sh > ./pagina1.html
./pag2.sh > ./pagina2.html
./pag3.sh > ./pagina3.html