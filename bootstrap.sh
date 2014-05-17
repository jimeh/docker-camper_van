#! /usr/bin/env bash

# Install dependencies.
apt-get install -y openssl ruby1.9.1

# Install build dependencies.
apt-get install -y build-essential libssl-dev ruby1.9.1-dev

# Install camper_van.
gem install --no-ri --no-rdoc -v 0.0.16 camper_van

# Remove build dependencies.
apt-get remove -y build-essential libssl-dev ruby1.9.1-dev
apt-get autoremove -y

# Clean up caches.
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
gem source -c
