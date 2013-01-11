#!/bin/sh
# Twitter backup script using t gem
# http://sferik.github.com/t/#configuration explains how to setup your account

# Does Twitter API still set a limit 3200 here?
LIMIT=${1:-9999}
USER=${2:-@bdelacretaz}

echo "Backing up up to $LIMIT tweets of $USER to stdout..." >&2
t timeline $USER -n $LIMIT -l
