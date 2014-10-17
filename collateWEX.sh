#!/bin/bash

version=$1
base_directory=/Users/wpantoja/Repositories/PayPal_Github/FoundationClient/wallet-sdk-android

echo Version = $version
echo Base Directory = $base_directory


cd $base_directory

rm -rf $base_directory/collate/$version
mkdir -p $base_directory/collate/$version

for i in $(find . -mindepth 4 -type d -name aar | awk -F/ '{ print $2 }') ; do cp $base_directory/$i/build/outputs/aar/*-$version*.aar $base_directory/collate/$version; done





