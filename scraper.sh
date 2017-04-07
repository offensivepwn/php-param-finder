#!/bin/bash
clear
figlet param-finder
line(){
	echo "============================================="
}
line
echo "Enter the URL"
read url
line

curl --silent $url|sed -n '/php?/p'|cut -d '=' -f2-|sed -e 's/><span//g'|cut -d '>' -f1|sed -ne '/php?/p'|sed -e 's/style/+/g'|cut -d '+' -f1|cut -d ';' -f2|sed -e 's/" href="//g'|sed -e 's/"//g'|sed -e 's/ type=1//g'