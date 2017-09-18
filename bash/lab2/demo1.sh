#!/bin/bash
# Practicing variables.

export MYNAME="Jeff"
mytitle="Mr."
today=$(date +%A)

#old way of dealing with multiple lines
#echo "Welcome to planet $HOSTNAME, $mytitle $MYNAME!
#Today is $today."

cat <<EOF
echo Welcome to planet $HOSTNAME, $mytitle $MYNAME!
Today is $today.
EOF
