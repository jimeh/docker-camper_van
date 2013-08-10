# version 0.0.10.0
# docker-version 0.5.1
from        ubuntu:12.04
maintainer  Jim Myhrberg "contact@jimeh.me"

# Make sure the package repository is up to date.
run     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run     apt-get update

# Let's do this...

# We use a bootstrap script to avoid having temporary cache files and build
# dependencies being committed and included into the docker image. This saves
# us about 150MB.
add     bootstrap.sh /tmp/
run     chmod +x /tmp/bootstrap.sh && /tmp/bootstrap.sh

entrypoint ["/usr/local/bin/camper_van"]
cmd        ["--help"]
