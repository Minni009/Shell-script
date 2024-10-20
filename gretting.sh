#!/bin/bash

NAME=""
WISHES=""

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, specify the name (mandatory) "
    echo "-w specify the wishes. ex, Good Morning"
    echo "-h Dispaly Help and exit " 
}

while getopts ":n:w:h" opt; do
     case $opt in
          n) NAME="$OPTARG";;
          w) WHISHES="$OPTARG";;
          \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
          :) USAGE; exit;;
          h) USAGE; exit;;
          
    esac
done