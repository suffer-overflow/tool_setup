#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y git wget curl vim python3 python3-pip
sudo apt install -y libpcap-dev
sudo apt install gcc
apt install pipx
pipx ensurepath
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz
tar -C /usr/local -xvf go1.22.3.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
source ~/.bash_profile


go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest


pipx install git+https://github.com/xnl-h4ck3r/waymore.git
pipx install git+https://github.com/xnl-h4ck3r/xnLinkFinder.git


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

go install github.com/sensepost/gowitness@latest
