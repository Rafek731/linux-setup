#!/usr/bin/env bash

files_dir=''
dotlinkfile=''

if [ $# -eq 0 ]; then
	files_dir=($(pwd))
fi

while read 