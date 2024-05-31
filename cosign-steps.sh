export COSIGN_PASSWORD="C@S1GN#$&"

# Sign the docker image
cosign sign --key cosign.key travisarchitectenterprise/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub travisarchitectenterprise/python-hello-world

# Logout docker
docker logout
