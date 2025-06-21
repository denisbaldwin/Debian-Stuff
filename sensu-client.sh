curl -s https://packagecloud.io/install/repositories/sensu/stable/script.deb.sh | sudo bash

# Install the sensu-go-agent package
sudo apt-get install sensu-go-agent git

git clone https://github.com/denisbaldwin/Debian-Stuff.git

cd Debian-Stuff
cp agent.yml  /etc/sensu/agent.yml


sudo systemctl start sensu-agent
sudo systemctl enable sensu-agent
sudo systemctl status sensu-agent
