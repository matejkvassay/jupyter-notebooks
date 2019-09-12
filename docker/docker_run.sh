#config
export JUPYL_PORT=9996
export JUPYL_WORKDIR=$HOME/project/mkv-jupyter-notebooks
export JUPYL_JUPYCFG=$HOME/.jupyter
export JUPYL_CERT=$HOME/.ssh/mycert.pem
export JUPYL_KEY=$HOME/.ssh/mykey.key

#docker run
sudo docker run -d \
    --restart=unless-stopped \
    -v $JUPYL_JUPYCFG:/root/.jupyter \
    -v $JUPYL_CERT:/opt/mycert.pem \
    -v $JUPYL_KEY:/opt/mykey.key \
    -v $JUPYL_WORKDIR:/opt/workdir \
    -e JUPYL_PORT=$JUPYL_PORT \
    --net=host \
    mkv-jupyter-notebooks
