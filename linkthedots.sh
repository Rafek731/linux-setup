#!/usr/bin/env bash

dir=''

if [[ $# -eq 0 ]]; then
	dir=($(pwd))
fi

echo $dir
