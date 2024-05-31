# Login in docker
docker login -u "${DOCKER_HUB_USER}" -p "${DOCKER_HUB_PASSWORD}"

# build docker image
docker build -t hello-world-python .

# tag docker image
docker tag hello-world-python Reidenar/python-hello-world

# Push the docker image
docker push Reidenar/python-hello-world
