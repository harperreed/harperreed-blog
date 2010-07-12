#!/bin/sh
tmpfile="/tmp/$$"
if [ $# -ne 1 ] ; then
echo "USAGE $0 dosfile"
exit 4
fi
tr -d '\015\032' < $1 > $tmpfile && mv $tmpfile $1
