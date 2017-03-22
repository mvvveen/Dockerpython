#!/bin/bash

eval "$(pyenv init -)"
pyenv activate venv_3.3.5_deformdemo
pyenv virtualenv 3.3.5 venv_3.3.5_deformdemo

# Created venv in ~/.pyenv/versions/venv_3.3.5_deformdemo

git clone https://github.com/Pylons/deformdemo.git ~/deformdemo

cd ~/deformdemo
#pyenv activate venv_2.7.6_deformdemo
#pip install setuptools --upgrade
#python setup.py develop

pyenv activate venv_3.3.5_deformdemo
pip install setuptools --upgrade
pip install gunicorn
python setup.py develop

#apt-get build-dep -y python-psycopg2


# Here we download that snake if it is not there already

#add
