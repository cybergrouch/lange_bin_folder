#!/bin/bash

function tabTheme {
	NAME=$1; if [ -z "$NAME" ]; then NAME="Ocean"; fi
	osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}

function paypalJavaTerminal {
	tabTheme "Grass"
}

function sshTerminal {
	tabTheme "Silver Aerogel"
}

function normalTerminal {
	tabTheme "Ocean"
}

function initPayPalJava {
	source ~/bin/setPayPalJavaHome.sh
	paypalJavaTerminal
}

function makeTitle {
	TITLE=$1
	
	if [ -n "$TITLE" ]; then
		echo -n -e "\033]0;$TITLE\007"
	fi
}
