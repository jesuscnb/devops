FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
apt-get update && \
apt-get -y install docker-ce && \
sudo addgroup --system docker && \
sudo adduser jenkins docker && \
newgrp docker && \
apt-get -y install maven && \
apt-get -y install sshpass && \
apt-get -y install vim
COPY swarm-deploy.sh /swarm-deploy.sh
COPY swarm-deploy-aws.sh /swarm-deploy-aws.sh
COPY virtus.pem /virtus.pem
USER jenkins
