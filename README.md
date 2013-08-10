# camper_van for Docker

Run the [camper_van](https://github.com/zerowidth/camper_van) Camfire <-> IRC
bridge in a Docker container.


## Running

To pull and run the image from the Docker Index, simply run:

    docker run jimeh/camper_van

This will download the image if needed, and print camper_van's `--help`
message. To actually run camper van you at least have to tell it an IP address
to bind to:

    docker run jimeh/camper_van 0.0.0.0

This runs camper_van listening for incoming connections from any IP
address. However camper\_van's default 6667 port is not exposed on the
host. To find out what port it's been mapped to run:

    docker ps

Or if you want to specify which port to map the default 6667 port to:

    docker run -p 26667:6667 jimeh/camper_van 0.0.0.0

Resulting in port 26667 on the host mapping to 6667 within the container.


## Building It Yourself

1. Install Docker (http://docker.io/).
2. Checkout source: `git clone https://github.com/jimeh/docker-camper_van.git`
3. Build container: `docker build -t $(whoami)/camper_van .`
