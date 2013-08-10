#! /usr/bin/env bash

# Install dependencies.
apt-get install -y openssl ruby1.9.3

# Install build dependencies.
apt-get install -y build-essential libssl-dev

# Install camper_van.
gem install --no-ri --no-rdoc -v 0.0.10 camper_van

# Remove build dependencies.
apt-get remove -y build-essential libssl-dev
apt-get autoremove -y

# Clean up caches.
apt-get clean
gem source -c
