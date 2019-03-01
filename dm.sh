#!/bin/bash - 
#===============================================================================
#
#          FILE: dm.sh
# 
#         USAGE: ./dm.sh 
# 
#   DESCRIPTION: start desktop environment in tty!
# 
#  REQUIREMENTS: being in tty! 
#         NOTES: add your desktop in startDesktop function and run it!
#        AUTHOR: VirtualDemon (VD) 
#       CREATED: 03/01/2019 12:38
#===============================================================================
# reset the terminal
tput reset
# set colors
resetColor=$(tput sgr0)
redColor=$(tput setaf 1)
greenColor=$(tput setaf 2)
blueColor=$(tput setaf 4)
boldText=$(tput bold)
# check if another desktop environment is running
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	# script banner
	echo "
	${boldText} 
	${blueColor}
      _                  
     | | o     |  o      
 __  | |     __|      ,  
/    |/  |  /  |  |  / \_
\___/|__/|_/\_/|_/|_/ \/ 	

	${resetColor}"
	# get the desktop lists without .desktop extension from /usr/share/xsessions
	desktops=$(ls /usr/share/xsessions | sed 's/.desktop//g')
	# set deCounter for printing the desktop environments
	deCounter=0
	# print desktop environments like:  0) xfce
	for de in ${desktops[@]} ; do
		echo "${redColor}$deCounter${resetColor}) ${greenColor}$de${resetColor}"
		# increase deCounter until desktop environments finished...
		((deCounter++))
	done
	echo -e "\n"
	# get the number of printed desktop from user
	read -p $'\e[35mPlease choose the NUMBER of your installed desktop environment :\e[0m ' userChoice
	# check user input 
	if [[ ! $userChoice || $userChoice = *[^0-9]* ]]; then
    		echo "${boldText}${redColor}Error: '$userChoice' is not a number.${resetColor}" >&2
		exit -1
	elif [[ $userChoice -gt $deCounter ]] ; then
		echo "${boldText}${redColor}Error: '$userChoice' is not in range.${resetColor}" >&2
		exit -1
	fi
	# custom function to start desktop environment(uncompleted because i got one desktop environment on my system .xfce4. )
	function startDesktop {
	desktop="$1"
	chosenDesktop=${desktops[$desktop]}
	if [[ $chosenDesktop=="xfce" ]] ; then
		echo "${greenColor}Starting xfce desktop environment${resetColor}"
	        startxfce4
	# add your desktops and commands here!!! 
	elif [[ $chosenDesktop=="YOUR DESKTOP GOES HERE" ]] ; then
		echo "${greenColor}Starting YOUR DESKTOP NAME GOES HERE desktop environment${resetColor}"
		"YOUR CUSTOM COMMAND TO START DESKTOP GOES HERE WITHOUT DOUBLE QOUTES"
	else
		echo "${redColor}Your desktop is not included! please fork me on github and make me better!${resetColor}"
	fi
	}

	startDesktop $userChoice
else 
	echo "${redColor}You're already running a desktop environment.${resetColor}"
fi
