sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install rename
sudo apt-get install -y python3-pip

sudo apt install -y python-pip
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y gcc make libpcap-dev clang

sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools

sudo apt-get -y install xvfb
sudo apt-get -y install phantomjs

sudo add-apt-repository ppa:canonical-chromium-builds/stage
sudo apt update
sudo apt install -y chromium-browser

pip3 install virtualenv





#create a tools folder in ~/
if [ ! -d ./tools ]; then
    mkdir ~/tools
fi

if [ ! -d ~/zk-scripts ]; then
    mkdir ~/zk-scripts
fi



cd ~/tools/



#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
sudo apt install -y awscli
echo "Don't forget to set up AWS credentials!"



echo "installing seclist"
git clone https://github.com/danielmiessler/SecLists.git
echo "done"



cd ~/zk-scripts/bounty-tools



#---------------------------------------------------------------------
#scripts
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./script.sh
./script.sh


#---------------------------------------------------------------------
#vhost
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./vhost.sh
./vhost.sh



#---------------------------------------------------------------------
#subdomain
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./subdomain.sh
./subdomain.sh



#---------------------------------------------------------------------
#takeover
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./takeover.sh
./takeover.sh



#---------------------------------------------------------------------
#s3-bucket
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./bucket.sh
./bucket.sh



#---------------------------------------------------------------------
#screenshot
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./screenshot.sh
./screenshot.sh



#---------------------------------------------------------------------
#git-tools
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./github.sh
./github.sh



#---------------------------------------------------------------------
#link-scanner
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./link-scanner.sh
./link-scanner.sh



#---------------------------------------------------------------------
#scanner
cd ~/zk-scripts/bounty-tools/scripts
chmod +x ./scanner.sh
./scanner.sh





#---------------------------------------------------------------------
#---------------------------------------------------------------------
#---------------------------------------------------------------------




echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
keys