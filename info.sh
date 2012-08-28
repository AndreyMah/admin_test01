#!/bin/bash

#
# Handlers for different file extensions
#

handle_avi()
{
    file "$1"
}

handle_gz()
{
    gunzip -l "$1"
}

handle_zip()
{
    unzip -l "$1"
}

#
# Main
#

filename="$1"
extension=${filename##*.}

if declare -F handle_$extension > /dev/null
then
    handle_$extension "$filename"
else
    echo "No handler found for extension '$extension'"
fi

   E2:B6:D7:AC:39:E0:80:54:D9:34:28:94:D4:55:B5:1B /C=EE/ST=Harjumaa/L=Tallinn/O=Edisoft Baltic/CN=HR Test