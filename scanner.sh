cd ~/tools/

#------------------------------------------------------
echo "installing masscan"
if [ ! -d ./masscan* ]; then
    git clone https://github.com/robertdavidgraham/masscan
    cd masscan
    make -j
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing nmap"
sudo apt-get install nmap
echo "done"



#------------------------------------------------------
echo "installing wpscan"
if [ ! -d ./wpscan* ]; then
    git clone https://github.com/wpscanteam/wpscan.git
    cd wpscan*
    sudo gem install bundler && bundle install --without test
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing sqlmap"
if [ ! -d ./sqlmap* ]; then
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
    pip install -r requirements.txt
fi
cd ~/tools/
echo "done"
