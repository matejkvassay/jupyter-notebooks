# mkv-jupyter-notebooks

This repository contains my personal Jupyter Notebooks which run on my Google Cloud VM.

Notebooks are being automatically saved by cron job which calls save.sh script.

# run docker container

sudo docker run -it \
-v ~/.virtualenvs/jupyter:/opt/venv \
-v ~/.jupyter:/root/.jupyter \
-v ~/.ssh/mycert.pem:/opt/mycert.pem \
-v ~/.ssh/mykey.key:/opt/mykey.key \
python:3.7.4-slim-buster bash