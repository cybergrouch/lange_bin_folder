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
	tabTheme
}

function initPayPalJava {
	source ~/bin/setPayPalJavaHome.sh
	paypalJavaTerminal
}