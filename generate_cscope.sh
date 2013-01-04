#!/bin/bash

DIR=$1

function usage()
{
	echo "generate_cscope.sh [DIR]"
	exit 1
}

if [ ! $# -eq 1 ] || [ ! -e $1 ]; then
	usage
fi

find $DIR						\
	-path "$LNX/Documentation*" -prune -o		\
	-name "*.[chxsS]" -print > $DIR/cscope.files

cd $DIR
cscope -b -q -k
cd -
