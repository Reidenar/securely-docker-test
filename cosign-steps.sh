export COSIGN_PASSWORD="testpassword"

# Sign the docker image
yes |cosign sign --key cosign.key reidenar/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub reidenar/python-hello-world

# Logout docker
docker logout
