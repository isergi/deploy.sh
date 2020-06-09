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

################################
THIS_DIR=`dirname $0`
ACTION=$1
VERSION_SW=$2
CURRENT_TIME="$( date +"%Y%m%d%H%M%S")"
DIR_CURRENT="$DIR_RELEASES/current"
DIR_NEW_BRANCH="$DIR_RELEASES/$CURRENT_TIME"

## Shows message how to usage if there are no any params
echo ""
usage() {
	echo "Usage: $0 [up|list|sw VERSION|protect on/off]"
	echo "    $LY up $R             - deploy to developement in new directory"
	echo "    $LY list $R           - show list prevision version"
	echo "    $LY switch VERSION $R     - swith to prevision version"
	exit 1
}
test -z "$1" && usage;

## Checks if we have aleady dir with the release
if [ ! -d $DIR_RELEASES ]; then
    echo "Please create the path with curent release $DIR_RELEASES";
  exit 1
fi

## List of available commands
cd $THIS_DIR
source steps/list.sh
cd $THIS_DIR 
source steps/up.sh
cd $THIS_DIR
source steps/switch.sh