#!/bin/bash

SRC_DIR=$1

if [ -z "$SRC_DIR" ]; then
	SRC_DIR=/Users/wpantoja/Repositories/PayPal_Github/FoundationClient/Foundation-Android
fi

mkdir $SRC_DIR
git init $SRC_DIR
cd $SRC_DIR
git config remote.origin.url https://github.paypal.com/wpantoja/Foundation-Android.git # timeout=10
git config remote.origin.fetch +refs/heads/*:refs/remotes/origin/* # timeout=10
git fetch --tags --progress https://github.paypal.com/wpantoja/Foundation-Android.git +refs/heads/*:refs/remotes/origin/*
git config core.sparsecheckout # timeout=10
git checkout develop
git remote # timeout=10
git submodule init # timeout=10
git submodule sync # timeout=10
git config --get remote.origin.url # timeout=10
git submodule update --init --recursive