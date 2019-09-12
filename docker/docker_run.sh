#config
export JUPYL_PORT=9996
export JUPYL_WORKDIR=$HOME/project/mkv-jupyter-notebooks
export JUPYL_VENV=$HOME/.virtualenvs/jupyter
export JUPYL_JUPYCFG=$HOME/.jupyter
export JUPYL_CERT=$HOME/.ssh/mycert.pem
export JUPYL_KEY=$HOME/.ssh/mykey.key

#set up env permissions
sudo chmod -R 777 $JUPYL_VENV

#docker run
sudo docker run --rm \
    -v $JUPYL_VENV:/opt/venv \
    -v $JUPYL_JUPYCFG:/root/.jupyter \
    -v $JUPYL_CERT:/opt/mycert.pem \
    -v $JUPYL_KEY:/opt/mykey.key \
    -v $JUPYL_WORKDIR:/opt/workdir \
    -e JUPYL_PORT=$JUPYL_PORT \
    --net=host \
    mkv-jupyter-notebooks
