#!/bin/bash

while getopts ":a:b:cdef" opt; do
      case $opt in
        a ) APPLE="$OPTARG";;
        b ) BANANA="$OPTARG";; 
        c ) CHERRY="$OPTARG";;
        d ) DFRUIT="$OPTARG";;
        e ) EGGPLANT="$OPTARG";;
        f ) FIG="$OPTARG";;
        \?) echo "Invalid option: -"$OPTARG"" >&2
            exit 1;;
        : ) echo "Option -"$OPTARG" requires an argument." >&2
            exit 1;;
      esac
    done
