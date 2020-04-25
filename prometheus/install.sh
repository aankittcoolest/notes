cd ~/test
DOWNLOAD_URL=`curl -s https://github.com/prometheus/prometheus/releases/latest | cut -d \" -f 2 | xargs curl -s | grep darwin-amd64 | grep href | cut -d \" -f 2 | xargs printf "https://github.com%s"`
FILENAME=`echo ${DOWNLOAD_URL} | awk -F / '{print $NF}'`
FOLDER_NAME=`echo ${FILENAME} | gsed 's/.tar.gz$//'`
echo $FOLDER_NAME
wget $DOWNLOAD_URL

tar -xvf $FILENAME
rm $FILENAME
mv $FOLDER_NAME prometheus