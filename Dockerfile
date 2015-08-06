FROM debian:jessie
MAINTAINER Mark Percival <m@mdp.im>

RUN apt-get update && apt-get install -y python python-pip curl unzip groff
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install awsebcli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"&& \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

VOLUME ["/root/.aws"]

# Configure it
# docker run --rm -it -v $HOME/.aws:/root/.aws mpercival/awscli aws configure

# Run it like so...
# docker run --rm -it -v $HOME/.aws:/root/.aws mpercival/awscli eb init
