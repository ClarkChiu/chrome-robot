FROM ubuntu:20.04

ENV  TZ=Asia/Taipei

RUN  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
     apt-get update && \
     apt-get install -y curl build-essential python3 python3-pip python3-dev && \
     pip3 install --upgrade pip undetected-chromedriver fake-useragent 

RUN  curl -LO https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
     apt-get install -y ./google-chrome-stable_current_amd64.deb && \
     rm google-chrome-stable_current_amd64.deb

ENTRYPOINT ["bash"]
