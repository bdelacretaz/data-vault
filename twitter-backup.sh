#!/bin/sh
# Twitter backup script using t gem
# http://sferik.github.com/t/#configuration explains how to setup your account

LIMIT=${1:-99999}
USER=${2:-@bdelacretaz}

echo "Backing up up to $LIMIT tweets of $USER to stdout..." >&2
echo "(but it looks like Twitter sets a lower limit around 3200)" >&2
echo "Saving a few overlapping backup files solves that, as a hack" >&2
t timeline $USER -n $LIMIT -l
