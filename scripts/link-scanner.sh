cd ~/tools/

#------------------------------------------------------
echo "installing LinkFinder"
if [ ! -d ./LinkFinder* ]; then
    git clone https://github.com/GerbenJavado/LinkFinder.git
    cd LinkFinder
    python setup.py install
fi



#------------------------------------------------------
echo "installing dirsearch"
if [ ! -d ./dirsearch* ]; then
    git clone https://github.com/maurosoria/dirsearch.git
    cd dirsearch
    pip install -r requirements.txt
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing JSParser"
if [ ! -d ./JSParser* ]; then
    git clone https://github.com/nahamsec/JSParser.git
    cd JSParser*
    pyenv local 2.7.15
    sudo python setup.py install
    pip install -r requirements.txt
fi
cd ~/tools/
echo "done"







