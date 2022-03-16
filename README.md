# Prepare the Docker Image for latest version of Chrome

The dockerfile for build the Docker image which includes the latest version of Google Chrome browser, and Python libraries for web automation (i.e.: undetected-chromedriver and fake-useragent).

# Why?
Due to [undetected-chromedriver](https://github.com/ultrafunkamsterdam/undetected-chromedriver) will get the [latest Google Chrome-Driver](https://chromedriver.storage.googleapis.com/LATEST_RELEASE) during runtime. Therefore, the latest Google Chrome browser needs to be available/installed in environment.
