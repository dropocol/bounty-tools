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



# Correct
foo=$(dig google.com A +nocomments +noquestion +noauthority +noadditional +nostats | 
awk '{if (NR>3){print}}'| 
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' | 
jq --slurp .) | jq -n --argjson v $foo '{"foo": $v}'




foo=$(dig wfmnapayst.starbucks.com A +nocomments +noquestion +noauthority +noadditional +nostats | 
awk '{if (NR>3){print}}'| 
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' | 
jq --slurp .) | jq -n --argjson v $foo '{"foo": $v}'



foo=$(dig wfmnapayst.starbucks.com A +nocomments +noquestion +noauthority +noadditional +nostats | 
awk '{if (NR>3){print}}'| 
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' | 
jq --slurp .) | echo $foo | jq .




foo=$(dig facebook.com A +nocomments +noquestion +noauthority +noadditional +nostats |
awk '{if (NR>3){print}}'|
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' |
jq --slurp .)
echo $foo | jq .


#Latest correct
foo=$(dig @8.8.8.8 wfmnapayst.starbucks.com A +nocomments +noquestion +noauthority +noadditional +nostats |
awk '{if (NR>3){print}}'|
jq -R 'split("\t") |
{Name:.[0],TTL:.[2],Class:.[3],Type:.[4],IpAddress:.[5]}' |
jq --slurp .)
echo $foo | jq .



dig @8.8.8.8 wfmnapayst.starbucks.com A +noquestion +noauthority +noadditional +nostats



foo=$(dig @8.8.8.8 wfmnapayst.starbucks.com A +nocomments +noquestion +noauthority +noadditional +nostats |
awk '{ if ($4 >= 1 && $4 <= 10) print $1 }') | echo $foo

dig @8.8.8.8 wfmnapayst.starbucks.com A +noquestion +noauthority +noadditional +nostats |
awk '{ if (NR>3){print} }'








# wfmnapayst.starbucks.com
# uber.com
# lallaalal.uber.com
#  && -z "$check_null" 



# foo=$(dig @8.8.8.8 uber.com A +noquestion +noauthority +noadditional +nostats |  awk '{ if (NR>5){print}}')
# response=''
# result=''
# big_result=''
# small_result=''
# count=0
# total_lines=$(echo "$foo" | wc -l)
# while IFS= read -r line
# do
#     count=$(( $count + 1 ))
#     echo $count
#     if [ "$count" -eq "1"  ]; then
#         response+=$(echo "$line" |  awk '$2 ~ /->>HEADER<<-/ { print $6 }' | awk '{gsub(",", "");print}')
#     elif [ "$count" -gt 6  ]; then
#         result+=$(echo "$line" |  awk '{ print $1,"\011",$2,"\011",$3,"\011",$4,"\011",$5 }'  | awk '{gsub(" ", "");print}' )
#         check_null=$(awk '{ print $5}')
#         echo "checking null"
#         echo $check_null
#         if [ "$count" -lt $total_lines]; then
#             result+='\n'
#         fi
#     fi

    

# done < <(printf '%s\n' "$foo")
# echo $response
# echo $result


# big_result=$(echo $result|
# jq -R 'split("\t") |
# {Name:.[0],TTL:.[1],Class:.[2],Type:.[3],address:.[4]}' |
# jq --slurp .)
# echo $big_result | jq .



        check_null=$(awk 'BEGIN{if($5==""){print "null or empty"}}')
        echo "checking null"
        echo check_null



# wfmnapayst.starbucks.com
# uber.com
# lallaalal.uber.com
#  && -z "$check_null" 



domain='wfmnapayst.starbucks.com'
request=$(dig @8.8.8.8 $domain A +noquestion +noauthority +noadditional +nostats |  awk '{ if (NR>5){print}}')
response=''
result=''
large_result=''
small_result=''
count=0
total_lines=$(echo "$request" | wc -l)
while IFS= read -r line
do
    count=$(( $count + 1 ))
    # echo $count
    if [ "$count" -eq "1"  ]; then
        response+=$(echo "$line" |  awk '$2 ~ /->>HEADER<<-/ { print $6 }' | awk '{gsub(",", "");print}')
    elif [ "$count" -gt 6  ]; then
        result+=$(echo "$line" |  awk '{ print $1,"\011",$2,"\011",$3,"\011",$4,"\011",$5 }'  | awk '{gsub(" ", "");print}' )
        if [ "$count" -lt $total_lines ]; then
            echo "Adding Line"
            result+='\n'
        fi
    fi
done < <(printf '%s\n' "$request")

if [ ! -z "$result" ]; then
    large_result=$(echo $result|
    jq -R 'split("\t") |
    {Name:.[0],TTL:.[1],Class:.[2],Type:.[3],address:.[4]}' |
    jq --slurp .)
    echo $large_result | jq .
else
    echo "NO data available"
fi


if [ ! -z "$result" ]; then
    small_result=$(echo $result |
    jq -R 'split("\t") |
    .[0]' |
    jq --slurp .)

    ip_address=$(echo $large_result | jq '(.[-1].address)')
    echo $ip_address
    small_result=$(echo $small_result |  jq . | jq --argjson args $ip_address '. += [$args]')
    echo $small_result | jq . 
else
    echo "NO data available"
fi



full_result=$(jq -n \
            --arg domain $domain  \
            --arg response $response \
            --argjson small_result $small_result \
            --argjson large_result $large_result \
            '{"domain" : $domain , "response" : $response , "small_result": $small_result , "large_result" : $large_result}')
echo $full_result | jq .





















full_result=$(jq -n --argjson args ["domain" : "domain.com" , "status" : "$response" , "small_result" : "$small_result" , "large_result" : "$large_result"] .{"foo" : "$args"})
echo $full_result

full_result=$(jq -n --argjson domain 'domain.com' status $response small_result $small_result large_result $large_result '{"domain": $domain , "status" : "$status" , "small_result" : $small_result }')
echo $full_result

respone='{"nslook"}'
full_result=$(jq -n --argjson small_result $small_result large_result $small_result '{"small_result": $small_result , large_result : $large_result}')
echo $full_result


respone='{"nslook"}'
full_result=$(jq -n --argjson small_result $small_result '{"small_result": $small_result}')
echo $full_result | jq .


respone='{"nslook"}'
doma="uber.com"
full_result=$(jq -n --argjson small_result $small_result \
            --argjson large_result $large_result \
            '{"domain" : "$domain" , "small_result": $small_result , "large_result" : $large_result}')
echo $full_result | jq .








    #jq --argjson args '["abc","efg"]' '.["filename"] += $args' <<< '{"filename":[]}'
    # jq -n --args v $ip_address '. += $v')
    # jq '. += ["$ip_address"]' $big_result | jq .
    
















dig wfmnapayst.starbucks.com A +nocomments +noquestion +noauthority +noadditional +nostats
dig uber.com A +nocomments +noquestion +noauthority +noadditional +nostats

dig abu.uber.com A +nocomments +noquestion +noauthority +noadditional +nostats

./scripts/ct.py starbucks.com | ./bin/massdns -r lists/resolvers.txt -t A -o J -w results.txt







curl 'https:​//crt​.sh/?q=%.example​.com&output=json' | jq '.name_value' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u 