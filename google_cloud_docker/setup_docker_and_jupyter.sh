#!/bin/bash

# Install docker
sudo apt-get -y install \
apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce


# Install jupyter
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH=~/miniconda/bin:$PATH

echo "export PATH=~/miniconda/bin:$PATH" >> ~/.bashrc

~/miniconda/bin/conda install jupyter --yes


