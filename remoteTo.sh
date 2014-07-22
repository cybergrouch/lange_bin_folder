#!/bin/bash

function sshToServer() {
	echo Remoting to $1
	ssh $1
}

function hyper() {
	echo "hyperlvs$1.qa.paypal.com"
}

function stage2dev() {
	echo "stage2dev$1.qa.paypal.com"
}

function stage2c() {
	echo "stage2c$1.qa.paypal.com"
}

function show_help() {
cat << EOF
Usage: ${0##*/} [-h] [-s <hyper|stage2dev|stage2c>] [-n <server number>]
SSH to a particular server specifying Do stuff with FILE and write the result to standard output. With no FILE
or when FILE is -, read standard input.
     
    -h          display this help and exit
    -s TYPE     server type: one of the following: hyper, stage2dev, or stage2c. If not specified, will default to hyper
    -n NUMBER   server number for that server type. If not specified it will default to the following values:
                  for hyper: 34
                  for stage2dev: 681
                  for stage2c: 9313
EOF
} 

# Initialize our own variables:
server="hyper"
serverNumber="34"

OPTIND=1 # Reset is necessary if getopts was used previously in the script.  It is a good idea to make this local in a function.
while getopts "hs:n:" opt; do
    case "$opt" in
        h)
            show_help
            exit 0
            ;;
        s)
			server_arg=$OPTARG
            if [ -n "$server_arg" ]
            then
                if [ "$server_arg" == "stage2dev" ]
                then
                    server=$server_arg
					serverNumber="681"
				elif [ "$server_arg" == "stage2c" ]
				then
					server=$server_arg
					serverNumber="9313"
				elif [ "$server_arg" != "hyper" ]
				then
					show_help
					exit 0
				fi			
			fi
            ;;
        n)  
			server_number_arg=$OPTARG
            if [ -n "server_number_arg" ]
            then
				serverNumber=$server_number_arg
			fi
            ;;
        '?')
            show_help >&2
            exit 1
            ;;
    esac
done
shift "$((OPTIND-1))" # Shift off the options and optional --.

sshToServer `$server $serverNumber`

