#!/bin/bash

#This script is for the bash semester assignment.


#Declare variables and assign any default values.
#Define functions for error messages and displaying command line help.
function disphelp {
  cat <<EOF
  Proper Usage: $0 [-h | --help] [out option...]
    Output option can be one or more of the following:
    [-o | --osinfowant]
    [-c | --cpuinfowant]
    [-n | --namesinfowant]
EOF
}

function errmsg {
  echo "$@" >&2
}
#Process the command line options, saving the results in variables for later use.
rundefault="yes"
while ( $# -gt 0 ); do
  case "$1" in
    -h| --help)
      disphelp
      exit 0
      ;;
    -o| --osinfowant)
      osinfowant="yes"
      rundefault="no"
      ;;
    -c| --cpuinfowant)
      cpuinfowant="yes"
      rundefault="no"
      ;;
    -n| --namesinfowant)
      namesinfowant="yes"
      rundefault="no"
      ;;
    *)
      errmsg "Argument '$1' is unrecognized."
      errmsg "$(disphelp)"
      exit 1
      ;;
  esac
  shift
done


#Gather the data into variables, using arrays where helpful.
if [ "$rundefault" = "yes" -o "$osinfowant" = "yes" ]; then
  osinfo= grep "VERSION=" /etc/os-release | sed -e 's/VERSION//' -e 's/=//' -e 's/"//g'
fi
#Create the output using the gathered data and command line options.
#Display the output.
#Do any cleanup of temporary files if needed.
