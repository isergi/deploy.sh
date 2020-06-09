#!/bin/sh

# Define const values
source inc/define.sh

# Init project config params
source config/config.sh

# Set project configuration params
if [ -e config/config.local.sh ]; then
  source config/config.local.sh
fi

# Check if we can continiue deployment
source inc/check_init.sh

if [ $# -ge 1 -a x"$1" == x"open" ]; then
	rm -f $DIR_PUBLIC.closed
else
	touch $DIR_PUBLIC.closed
fi