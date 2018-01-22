#!/bin/bash
#create by janny_khan (Reboot_Ex)
j="\e[1;33m"  
k="\e[1;32m" 
n="\e[0m" 

call(){
	echo -e "${k}[+] ${n} ${1}" 
}
call1(){
	echo -e -n "${j}[*] ${n} ${1}"
	read $2
}
PlayPacar(){
	touch $2
	chmod 777 $2
	echo $1 >> $2
}
bingDork(){
	local curl=`curl "http://www.bing.com/search?q=${2}&first=${1}1" -s`
	local gets=$(echo $curl | grep -Po "(?<=<h2><a href=\")[^\"]*")
	for geturl in $gets
	do
		call $geturl
		PlayPacar $geturl $3
	done
}
clear
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▀▀▀▀█░█▀▀▀▀ ▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀▀▀ 
▐░▌       ▐░▌▐░▌       ▐░▌    ▐░▌     ▐░▌▐░▌    ▐░▌▐░▌          
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌    ▐░▌     ▐░▌ ▐░▌   ▐░▌▐░▌ ▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░▌     ▐░▌     ▐░▌  ▐░▌  ▐░▌▐░▌▐░░░░░░░░▌
▐░█▀▀▀▀█░█▀▀ ▐░█▀▀▀▀▀▀▀█░▌    ▐░▌     ▐░▌   ▐░▌ ▐░▌▐░▌ ▀▀▀▀▀▀█░▌
▐░▌     ▐░▌  ▐░▌       ▐░▌    ▐░▌     ▐░▌    ▐░▌▐░▌▐░▌       ▐░▌
▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌▄▄▄▄█░█▄▄▄▄ ▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄█░▌
▐░▌       ▐░▌▐░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌
 ▀         ▀  ▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀ 
                                                                                                               
" 
call1 "Bing Dork    : " dork
call1 "Page No      : " page
call1 "Save As      : " save
for (( i = 0; i < $page; i++ )); do
	bingDork $i $dork $save
done


