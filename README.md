# govirtual

## Introduction
govirtual is a single comamnd to replace these
 - Open windows command prompt or linux terminal
 - Check if python virtual environment is present
    - If YES activate the virtual environment
    - If NO create virtual environment and activate it

## How to use
 - Download this script and place it a folder (say c:\tools for windows and /usr/share/ for linux)
 - Add the folder (c:\tools | /usr/share/) in your windows or linux environmental PATH variable
 - Now you can type 'govirtual' in any location.
   govirtual will check for deafult python virtual directory (pyenv), if existing directory is present it will activate it else it will create a new one and will activate it
 - If requirements.txt file is detected it will install the packages mentioned in it as well