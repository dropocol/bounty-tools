


cd ~/tools/

#------------------------------------------------------
echo "installing Amass"
mkdir amass
sudo snap install amass
sudo snap refresh
echo "done"


#------------------------------------------------------
echo "installing Sublist3r"
if [ ! -d ./Sublist3r* ]; then
    git clone https://github.com/aboul3la/Sublist3r.git
    cd Sublist3r*
    #pip install -r requirements.txt
    python setup.py install
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing knock.py"
if [ ! -d ./knock* ]; then
    pyenv local 2.7.15
    sudo apt-get install python-dnspython
    git clone https://github.com/guelfoweb/knock.git
    #pip install -r requirements.txt
    python setup.py install
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing subfinder"
mkdir subfinder
go get github.com/subfinder/subfinder
echo "done"


#------------------------------------------------------
# echo "installing HostileSubBruteforcer"
# if [ ! -d ./HostileSubBruteforcer* ]; then
#     git clone https://github.com/nahamsec/HostileSubBruteforcer.git
# fi
# cd ~/tools/
# echo "done"



#------------------------------------------------------
# echo "installing altdns"
# if [ ! -d ./altdns* ]; then
#     git clone https://github.com/infosec-au/altdns.git
#     cd altdns
#     pyenv local 2.7.15
#     pip install -r requirements.txt
# fi
# cd ~/tools/
# echo "done"



#------------------------------------------------------
# echo "installing dnsrecon"
# if [ ! -d ./dnsrecon* ]; then
#     git clone https://github.com/darkoperator/dnsrecon.git
#     cd dnsrecon
#     pip install -r requirements.txt
# fi
# cd ~/tools/
# echo "done"



#------------------------------------------------------
# echo "installing Aquatone"
# mkdir aquatone
# gem install aquatone
# echo "done"


#------------------------------------------------------
echo "installing massdns"
if [ ! -d ./massdns* ]; then
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    pyenv local 2.7.15
    make
fi
cd ~/tools/
echo "done"











