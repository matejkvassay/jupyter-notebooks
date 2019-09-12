#config
export JUPYL_PORT=9997
export JUPYL_HOST="34.82.232.197"
export JUPYL_WORKDIR=$HOME/project/mkv-jupyter-notebooks
export JUPYL_VENV=$HOME/.virtualenvs/jupyter
export JUPYL_JUPYCFG=$HOME/.jupyter
export JUPYL_CERT=$HOME/.ssh/mycert.pem
export JUPYL_KEY=$HOME/.ssh/mykey.key

#set up env permissions
sudo chmod -R 777 $JUPYL_VENV

#docker run
sudo docker run -it \
    -v $JUPYL_VENV:/opt/venv \
    -v $JUPYL_JUPYCFG:/root/.jupyter \
    -v $JUPYL_CERT:/opt/mycert.pem \
    -v $JUPYL_KEY:/opt/mykey.key \
    -v $JUPYL_WORKDIR:/opt/workdir \
    -p $JUPYL_PORT:8080 \
    --net=host \
    mkv-jupyter-notebooks