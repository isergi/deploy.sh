#!/bin/sh
#
# CHECKING INITIALIZATION 
#

ERROR_INIT="false";

# Check DIR_RELEASES config value initialization
if [ $DIR_RELEASES = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value DIR_RELEASES";
fi

# Check DIR_STORAGE config value initialization
if [ $DIR_STORAGE = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value DIR_STORAGE";
fi

# Check DIR_VENDOR config value initialization
if [ $DIR_VENDOR = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value DIR_VENDOR";
fi

# Check DIR_USER config value initialization
if [ $DIR_USER = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value DIR_USER";
fi

# Check DIR_PUBLIC config value initialization
if [ $DIR_PUBLIC = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value DIR_PUBLIC";
fi

# Check TYPE_ENVIROMENT config value initialization
if [ $TYPE_ENVIROMENT = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value TYPE_ENVIROMENT";
fi

# Check REPO_URL config value initialization
if [ $REPO_URL = $NOT_CONFIGURED_VALUE ]; then
	ERROR_INIT="true";
	echo $LR"ERROR:"$R" Please init configuration value REPO_URL";
fi

# Exit from deployment if we have initialization error
if [ $ERROR_INIT = "true" ]; then
	echo $LY"INFORMATION:"$R" Create ./config/config.local.sh file and redefine required params."
	exit;
fi