FROM python:3.7.4-slim-buster
RUN pip install --upgrade pip virtualenv
RUN pip install jupyterlab
ENV JUPYL_PORT=8080
ENTRYPOINT /bin/bash && source /opt/venv/bin/activate && \
            cd /opt/workdir && \
            jupyter-lab --allow-root --certfile /opt/mycert.pem --keyfile /opt/mykey.key --no-browser --port=$JUPYL_PORT
