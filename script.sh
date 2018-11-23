cd ~/zk-scripts

#------------------------------------------------------
echo "installing bash aliases from bounty-profile"

if [ ! -d ~/zk-scripts/bounty-profile ]; then
    git clone https://github.com/dropocol/bounty-profile.git
    cd bounty-profile
else
    cd  ~/zk-scripts/bounty-profile
    git stash
    git stash clear
    git pull
fi


if ! grep -F "source ~/zk-scripts/bounty-profile/.bounty-profile" ~/.bashrc ; then
 echo 'source ~/zk-scripts/bounty-profile/.bounty-profile' >> ~/.bashrc
fi

. ~/.bashrc
cd ~/tools/
echo "done"




#------------------------------------------------------
# echo "installing lazyrecon"
# if [ ! -d ~/tools/lazyrecon ]; then
#     cd ~/tools/
#     git clone https://github.com/nahamsec/lazyrecon.git
#     cd lazyrecon
# else
#     cd ~/tools/lazyrecon
#     git stash
#     git stash clear
#     git pull
# fi

# . ~/.bashrc
# cd ~/tools/
# echo "done"