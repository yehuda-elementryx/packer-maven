FROM maven:3.6.3-adoptopenjdk-8

RUN apt-get update && apt-get install -y gnupg software-properties-common
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && apt-get update && apt-get install -y packer
ENTRYPOINT ["/bin/bash"]