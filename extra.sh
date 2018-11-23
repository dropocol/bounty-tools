#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#*******This file contains some extra data************
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------
#------------------------------------------------------


#------------------------------------------------------
cd ~/tools/
echo "installing gitrob"
go get github.com/michenriksen/gitrob
if [ ! -d ./gitrob* ]; then
    mkdir gitrob
    cd gitrob
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
#Symbolic link
sudo ln -s ./gitrob /usr/bin/gitrob






dig uber.com +nocomments +noquestion +noauthority +noadditional +nostats | 
awk '{if (NR>3){print}}'| 
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' | 
jq --slurp . | 
jq -n --argjson v $foo '{"foo": $v}'





foo=$(dig uber.com +nocomments +noquestion +noauthority +noadditional +nostats | 
awk '{if (NR>3){print}}'| 
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' | 
jq --slurp .) | jq -n --argjson v $foo '{"foo": $v}'



./scripts/ct.py starbucks.com | ./bin/massdns -r lists/resolvers.txt -t A -o J -w results.txt



