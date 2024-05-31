export COSIGN_PASSWORD="dockertest1"

# Sign the docker image
cosign sign --key cosign.key Reidenar/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub Reidenar/python-hello-world

# Logout docker
docker logout
