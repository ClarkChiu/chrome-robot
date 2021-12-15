root_path=/home/clark/chrome-robot/
cd $root_path

chromedriver_latest_ver=$(curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
current_chromedriver_ver=$(cat chrome_version.txt)

if [ "$chromedriver_latest_ver" != "$current_chromedriver_ver" ]; then
    echo "New Chrome version found or first build!"

    legacy_image=$(docker images | grep 'chrome-robot')
    if [ ! -z "$legacy_image" ]
    then
        docker rmi chrome-robot
    fi

    docker build . -t chrome-robot:latest --no-cache
    echo $chromedriver_latest_ver > chrome_version.txt
else
    echo "No new chrome version found!"
    exit 1
fi