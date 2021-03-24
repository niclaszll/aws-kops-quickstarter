FROM python:3.7-alpine

# install dependencies
RUN apk --no-cache add curl

# install aws-cli
RUN pip install --no-cache-dir awscli

# install latest kOps
RUN curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
RUN chmod +x kops
RUN mv kops /usr/local/bin/kops

WORKDIR /usr/src

# copy entrypoint shell script into image
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint

# make entrypoint shell script executable
RUN chmod +x /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]
