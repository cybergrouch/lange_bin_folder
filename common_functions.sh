#!/bin/bash

function tabTheme {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
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

function initJava {
	source ~/bin/setJavaHome.sh
	paypalJavaTerminal
}