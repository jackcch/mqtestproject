#!/bin/bash

#-----------------------------------------#
# Input Parameters: ./crtmqenv.sh $1 $2   # 
#                  $1 QMGR Name           #  
#                  $2 MQ Definition File  #
# Author: jackcch                         #
#-----------------------------------------#

#-------------------#
# Set MQ Environment#
#-------------------#
cd /opt/mqm/bin
. setmqenv -s

echo "Defining MQ from" $2 "for QManager:" $1

#-----------------------#
# Return to script path #
#-----------------------#
cd -
SCRIPT_PATH=$(pwd)
INPUT_FILE=$SCRIPT_PATH'/'$2
echo $INPUT_FILE

#-----------------------------#
# Pipe InputFile into RUNMQSC #
#-----------------------------#
if [ -f "$INPUT_FILE" ]; then
        runmqsc -f $INPUT_FILE $1
else
	echo $INPUT_FILE " Not Found - Terminating"
fi
