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
apt install -y awscli
echo "Don't forget to set up AWS credentials!"



echo "installing seclist"
git clone https://github.com/danielmiessler/SecLists.git
echo "done"



#---------------------------------------------------------------------
#vhost
chmod +x ./vhost.sh
./vhost.sh



#---------------------------------------------------------------------
#subdomain
chmod +x ./subdomain.sh
./subdomain.sh



#---------------------------------------------------------------------
#takeover
chmod +x ./takeover.sh
./takeover.sh



#---------------------------------------------------------------------
#s3-bucket
chmod +x ./bucket.sh
./bucket.sh



#---------------------------------------------------------------------
#screenshot
chmod +x ./screenshot.sh
./screenshot.sh



#---------------------------------------------------------------------
#git-tools
chmod +x ./github.sh
./github.sh



#---------------------------------------------------------------------
#link-scanner
chmod +x ./link-scanner.sh
./link-scanner.sh



#---------------------------------------------------------------------
#scanner
chmod +x ./scanner.sh
./scanner.sh



#---------------------------------------------------------------------
#scripts
chmod +x ./script.sh
./script.sh



#---------------------------------------------------------------------
#---------------------------------------------------------------------
#---------------------------------------------------------------------




echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
echo "export GITROB_ACCESS_TOKEN=token for gitrob"
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"