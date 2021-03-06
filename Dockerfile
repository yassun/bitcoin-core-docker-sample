FROM ubuntu:14.04

# set timezone JST
RUN /bin/cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# install tools
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3
RUN sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
RUN sudo apt-get install -y libboost-all-dev

RUN sudo apt-get install -y python-software-properties
RUN sudo apt-get install -y software-properties-common python-software-properties

RUN sudo add-apt-repository ppa:bitcoin/bitcoin
RUN sudo apt-get update
RUN sudo apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN sudo apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
RUN sudo apt-get install -y libminiupnpc-dev libqrencode-dev
RUN sudo apt-get install -y libzmq3-dev git

# install bitcoin core
RUN git clone https://github.com/bitcoin/bitcoin.git && \
    cd bitcoin && \
    ./autogen.sh && \
    ./configure && \
    make && \
    sudo make install

# install tools
RUN apt-get install -y --force-yes curl libffi-dev libgdbm-dev libncurses5-dev libreadline-dev libyaml-dev zlib1g-dev

# install ruby-build
RUN git clone https://github.com/sstephenson/ruby-build.git /tmp/ruby-build && \
    cd /tmp/ruby-build && \
    ./install.sh

# install ruby & base gems
RUN CONFIGURE_OPTS="--disable-install-doc" ruby-build -v 2.4.1 /usr/local && \
    gem install bundler rubygems-bundler --no-rdoc --no-ri && \
    gem regenerate_binstubs && \
    rm -rf /tmp/ruby-build*

