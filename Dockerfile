FROM ubuntu:14.04
RUN apt-get install -y gawk g++ gcc make libc6-dev libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev RUN automake libtool bison pkg-config libffi-dev unzip git
RUN apt-get install -y gcc-4.4 g++-4.4
RUN cd /tmp && wget http://cache.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p374.tar.gz
RUN tar -xzvf ruby-1.8.7-p374.tar.gz
RUN cd ruby-1.8.7-p374
RUN ./configure
RUN make CC=gcc-4.4
RUN make install 
RUN cd /tmp && wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.7.tgz
RUN tar -xzvf rubygems-1.3.7.tgz
RUN cd rubygems-1.3.7
RUN ruby setup.rb