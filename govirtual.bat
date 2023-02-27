@REM single command to activate python virtual environment
@REM supports automatic installation of libraries from requirement.txt
@REM Author: Lakhya Jyoti Nath (ljnath) @ August 2018 - February 2023 | www.ljnath.com
@REM
@REM chnage-log
@REM 0.2 - added support to pass custom python binary for creating virtual environment
@REM 0.3 - optimzed and enhancement

@echo off

REM Set the name of the virtual environment
set env_name=.venv

REM Check if virtual environment folder exists
if exist %env_name% (
    REM Activate the virtual environment if folder exists
    call %env_name%\Scripts\activate.bat

    REM Check if the switch to virtual environment was successful; if switch has failed, then the env is recreated
    if "%VIRTUAL_ENV%" == "" (
        echo Failed to switch to virtual environment. Recreating the environment...
        rmdir /s /q %env_name%
        python -m venv %env_name%
        call %env_name%\Scripts\activate.bat
    )
) else (
    REM Create the virtual environment
    python -m venv %env_name%

    REM Activate the virtual environment
    call %env_name%\Scripts\activate.bat
)

REM Install required packages if requirements.txt file is found
if exist requirements.txt (
    pip install -r requirements.txt
)
