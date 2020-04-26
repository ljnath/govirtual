#!/bin/bash
#
# single command to activate python virtual environment
# supports automatic installation of libraries from requirement.txt
# Author: Lakhya Jyoti Nath (ljnath) @ March 2019 | www.ljnath.com
#
# make sure to have python3 in the PATH variable

ENV_NAME=.venv
REQUIREMENT_FILE=requirements.txt

function create_environment()
{
	echo Python virtual environment $ENV_NAME is missing, creating it now...
	python3 -m venv $ENV_NAME
}

function switch_environment()
{
	. $ENV_NAME/bin/activate
}

function install_dependencies()
{
	if [ -f "$REQUIREMENT_FILE" ]; then
		pip install -r $REQUIREMENT_FILE
	fi
}

if ! [ -d "$ENV_NAME/bin" ]; then
	create_environment
fi

switch_environment
install_dependencies
