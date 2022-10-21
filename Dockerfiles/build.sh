#!/usr/bin/env bash

# Usage:	./build.sh <image_name> <dockerfile>
# Example:	./build.sh ubuntu2204 ubuntu2204.Dockerfile

docker build -t $1 . -f $2
docker tag $1
docker push siiokoltonski/siiszkolenia:$1