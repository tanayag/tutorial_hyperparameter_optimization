# Install Docker

sudo apt-get -y update
sudo apt-get -y install curl \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
sudo apt-get -y install apt-transport-https \
                       software-properties-common \
                       ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
sudo apt-get -y install software-properties-common
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"
sudo apt-get -y update
sudo apt-get -y install docker-engine


docker build -t "setup_dask:dockerfile" .

#removing docker images: docker rmi $(docker images -q)
#removing docker containers: docker rm $(docker ps -a -q)
