export COSIGN_PASSWORD="testpassword"

# Sign the docker image
yes |cosign sign --key cosign.key travisarchitectenterprise/python-hello-world

# Verify the docker image
cosign verify --key cosign.pub travisarchitectenterprise/python-hello-world

# Logout docker
docker logout
