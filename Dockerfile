# version 0.0.14.0
# docker-version 0.6.1
FROM        ubuntu:12.04
MAINTAINER  Jim Myhrberg "contact@jimeh.me"

# Make sure the package repository is up to date.
RUN         apt-get update

# Let's do this...

# We use a bootstrap script to avoid having temporary cache files and build
# dependencies being committed and included into the docker image. This saves
# us about 150MB.
ADD         bootstrap.sh /tmp/
RUN         chmod +x /tmp/bootstrap.sh && /tmp/bootstrap.sh

EXPOSE      6667
ENTRYPOINT  ["/usr/local/bin/camper_van"]
CMD         ["--help"]
