#------------------------------------------------------
echo "installing virtual host discovery"
if [ ! -d ./virtual-host-discovery* ]; then
    git clone https://github.com/jobertabma/virtual-host-discovery.git
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing VHostScan"
if [ ! -d ./VHostScan* ]; then
    git clone https://github.com/codingo/VHostScan.git
    cd VHostScan
    #pip install -r requirements.txt
    python3 setup.py install
    . ~/.bashrc
fi
cd ~/tools/
echo "done"