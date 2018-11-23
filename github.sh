cd ~/tools/

#------------------------------------------------------
echo "installing gitrob"
if [ ! -d ./gitrob* ]; then
    git clone https://github.com/michenriksen/gitrob.git
    go get github.com/michenriksen/gitrob
    cd gitrob
    chmod +x ./build.sh
    ./build.sh
    unzip -o ./build/gitrob_linux\*.zip
    mkdir reports
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing git-all-secrets"
docker run --rm -it abhartiya/tools_gitallsecrets --help
cd ~/tools/
echo "done"












