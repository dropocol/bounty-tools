cd ~/tools/

#------------------------------------------------------
echo "installing teh_s3_bucketeers"
if [ ! -d ./teh_s3_bucketeers* ]; then
    git clone https://github.com/tomdev/teh_s3_bucketeers.git
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing lazys3"
if [ ! -d ./lazys3* ]; then
    git clone https://github.com/nahamsec/lazys3.git
fi
cd ~/tools/
echo "done"



#------------------------------------------------------
echo "installing bucket-stream"
if [ ! -d ./bucket-stream* ]; then
    git clone https://github.com/eth0izzle/bucket-stream.git
    cd bucket-stream
    #virtualenv .venv && source .venv/bin/activate
    pip3 install -r requirements.txt
fi
cd ~/tools/
echo "done"
