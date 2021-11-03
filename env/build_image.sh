#/bin/bash

cd $(dirname $0)

ROOT_DIR=$(git rev-parse --show-toplevel)

cd $ROOT_DIR
IMAGE_NAME="erostamas/k8sspy"
echo "Image name is: $IMAGE_NAME"

docker build -t "$IMAGE_NAME" -f $ROOT_DIR/env/Dockerfile $ROOT_DIR/
docker push "$IMAGE_NAME"
