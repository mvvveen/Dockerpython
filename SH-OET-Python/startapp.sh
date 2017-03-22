#!/bin/bash

if [ ! -f ~/deformdemo/demo.ini ]; then
/SH-OET-Python/installpythonapp.sh
fi

~/.pyenv/versions/venv_3.3.5_deformdemo/bin/gunicorn --paste ~/deformdemo/demo.ini 

#add
