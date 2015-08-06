## AWS and EB CLI

Simple Docker image to interact with AWS and Elastic Beanstalk via a Docker image

### Usage

```
# Configure it for the first time
docker run --rm -it -v $HOME/.aws:/root/.aws mpercival/awscli aws configure
# Will save your AWS config to ~/.aws

# Run it
docker run --rm -it -v $HOME/.aws:/root/.aws mpercival/awscli eb init
```

