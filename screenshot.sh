cd ~/tools/

#------------------------------------------------------
echo "installing webscreenshot"
if [ ! -d ./webscreenshot* ]; then
    git clone https://github.com/maaaaz/webscreenshot.git
    pyenv local 2.7.15
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing Aquatone"
wget https://github.com/michenriksen/aquatone/releases/download/v1.4.1/aquatone_linux_amd64_1.4.1.zip
unzip aquatone_linux_amd64_1.4.1.zip -d ~/tools/aquatone
cd ~/tools/aquatone
chmod +x ./aquatone
sudo ln -s ~/tools/aquatone/aquatone /usr/bin/aquatone
echo "done"



#------------------------------------------------------
echo "installing EyeWitness"
if [ ! -d ./EyeWitness* ]; then
    git clone https://github.com/FortyNorthSecurity/EyeWitness.git
    pyenv local 2.7.15
    cd EyeWitness
    cd setup
    chmod +x ./setup.sh
    sudo ./setup.sh
fi
cd ~/tools/
echo "done"





