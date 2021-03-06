#!/bin/sh
#
# VAR VALUES INITIALIZATION 
#

# ENVIROMENT TYPE VALUE FOR PRODUCTION
ENV_TYPE_PRODUCTION="P"
# ENVIROMENT TYPE VALUE FOR TEST
ENV_TYPE_TEST="T"
# ENVIROMENT TYPE VALUE FOR DEVELOPMENT
ENV_TYPE_DEVELOPMENT="D"

# STRING VALUE IF SOME VAR NOT CONFIGURED
NOT_CONFIGURED_VALUE="%NOT_CONFIGURED%"

# PATH TO PHP
PHP_PATH="php"

# Colored constants
LR="\033[1;31m";
LG="\033[1;32m";
LY="\033[1;33m";
R="\033[0m";