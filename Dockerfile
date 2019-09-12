FROM python:3.7.4-slim-buster
RUN pip install --upgrade pip virtualenv
ENV VIRTUAL_ENV=/opt/venv/bin
RUN source $VIRTUAL_ENV/activate
RUN pip install jupyterlab
ENV PORT=9996
RUN jupyter-lab --certfile /opt/mycert.pem --keyfile /opt/mykey.key --no-browser --port=$PORT