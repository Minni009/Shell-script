#!/bin/bash


NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, specify the name (mandatory) "
    echo "-w specify the wishes. ex, Good Morning(Optional) good moring will be default"
    echo "-h Dispaly Help and exit " 
}

while getopts ":n:w:h" opt; do
    case $opt in 
            n) NAME="$OPTARG" ;;
            w) WHISHES="$OPTARG";;
         \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
          : ) USAGE; exit;;
        h) USAGE; exit;;
          
    esac
done

#if [ -z "$NAME"] || [ -z $WISHES ];
if [ -z "$NAME"]
then
  echo "ERROR: Both -n  mandatory option."
  USAGE
  exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning shell script"
