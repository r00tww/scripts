#!/usr/bin/env bash

error() {
	echo "$1"
	exit 1
}

BINPATH="$HOME/.local/bin"

#if [[ -z "$1" ]]; then
#	error "Usage: $0 [--install]"
#fi

if [[ "$1" == "--install" ]]; then
	if ! [[ -d "$BINPATH" ]]; then
		mkdir "$BINPATH"
	fi

	cp src/* $BINPATH
	chmod +x $BINPATH/*

	echo "Please add $BINPATH to your PATH. Good luck."
else
	error "Usage: $0 [--install]"
fi