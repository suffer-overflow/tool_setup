#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git wget curl vim python3 python3-pip
sudo apt install -y libpcap-dev
sudo apt install gcc
wget https://golang.org/dl/go1.21.linux-amd64.tar.gz
sudo tar -xvf go1.21.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
source ~/.bash_profile


go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


pip install waymore
pip install xnLinkFinder


go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/wappalyzergo/cmd/update-fingerprints@latest
go install -v github.com/rverton/webanalyze/cmd/webanalyze@latest
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest


go install github.com/g0ldencybersec/gungnir/cmd/gungnir@latest
go install github.com/g0ldencybersec/Caduceus/cmd/caduceus@latest

go install github.com/hakluke/hakrevdns@latest
go install -v github.com/tomnomnom/anew@latest