# version 0.1.0
# docker-version 0.5.0
from        ubuntu:12.04
maintainer  Jim Myhrberg "contact@jimeh.me"

# Make sure the package repository is up to date.
run     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run     apt-get update
run     apt-get upgrade -y

# Let's do this...
run     apt-get install -y build-essential openssl libssl-dev
run     apt-get install -y ruby1.9.3
run     gem install --no-ri --no-rdoc camper_van

expose  6667

entrypoint ["/usr/local/bin/camper_van"]
cmd        [""]
