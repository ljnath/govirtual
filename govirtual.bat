@REM single command to activate python virtual environment
@REM supports automatic installation of libraries from requirement.txt
@REM Author: Lakhya Jyoti Nath (ljnath) @ August 2018 | www.ljnath.com

@echo off
SET env_name=pyenv
SET requirement_file=requirement.txt
title GoVirtual 0.1 - %env_name%

IF NOT EXIST %env_name% GOTO :CREATE_ENV

:SWITCH_ENV
	call %env_name%\Scripts\activate.bat
	IF EXIST %requirement_file% (
		pip install -r %requirement_file%
	)
	GOTO :WELCOME
	
:CREATE_ENV
	echo Python virtual environment directory %env_name% is missing. Creating it now...
	python -m venv %env_name%
	GOTO :SWITCH_ENV
	
:WELCOME
	start %env_name%\Scripts\activate.bat
	exit