#!/usr/bin/env bash

# Script to download files

# Get local [ath]
localpath=$(pwd)
echo "Local path: $localpath"

# Define the checksum URL for the TargetScan root page
checksum_url="https://www.targetscan.org/cgi-bin/targetscan/data_download.vert80.cgi"

# Create the checksum directory
checksumpath="$localpath/checksum"
echo "Checksum path: $checksumpath"
mkdir -p "$checksumpath"
cd $checksumpath;

# Download file
wget -P $checksumpath $checksum_url

echo "Download done."