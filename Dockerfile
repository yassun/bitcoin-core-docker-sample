FROM ubuntu:14.04

# set timezone JST
RUN /bin/cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# install tools
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
RUN sudo apt-get install -y libtool autotools-dev autoconf libssl-dev
RUN sudo apt-get install -y libboost-all-dev

RUN sudo apt-get install -y python-software-properties
RUN sudo apt-get install -y software-properties-common python-software-properties

RUN sudo add-apt-repository ppa:bitcoin/bitcoin
RUN sudo apt-get update
RUN sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
RUN sudo apt-get install -y libminiupnpc-dev libqrencode-dev git

# install bitcoin core
RUN git clone https://github.com/bitcoin/bitcoin.git
RUN cd bitcoin && ./autogen.sh && ./configure && make && sudo make install

