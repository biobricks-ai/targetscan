#!/bin/bash
mkdir cache/unzip
for FILE in $(ls cache/download)
do
	NEW_DIR="${FILE%.*}"
	mkdir cache/unzip/$NEW_DIR
	unzip cache/download/$FILE -d cache/unzip/$NEW_DIR
done
