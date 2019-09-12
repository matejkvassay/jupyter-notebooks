sudo docker run -it \
-v ~/.virtualenvs/jupyter:/opt/venv \
-v ~/.jupyter:/root/.jupyter \
-v ~/.ssh/mycert.pem:/opt/mycert.pem \
-v ~/.ssh/mykey.key:/opt/mykey.key \
python:3.7.4-slim-buster bash