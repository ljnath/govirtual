@REM single command to activate python virtual environment
@REM Author: Lakhya Jyoti Nath (ljnath) @ August 2018

@echo off
SET env_name=pyenv
IF NOT EXIST %env_name% GOTO :CREATE_ENV

:SWITCH_ENV
	start %env_name%\Scripts\activate
	GOTO :EXIT
:CREATE_ENV
	echo Virtual environment directory %env_name% is missing. Setting up virtual environment
	virtualenv %env_name%
	GOTO :SWITCH_ENV
:EXIT
	exit

