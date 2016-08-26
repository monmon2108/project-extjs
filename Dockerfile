FROM centos:7.2.1511
MAINTAINER MonMon

RUN yum install -y wget bzip2 vim \
 && yum install -y make gcc gcc-c++\
 && yum install -y git bison libtool automake patch \
  zlib-devel libxml2-devel openssl-devel libyaml-devel libffi-devel readline-devel gdbm-devel ncurses-devel libcurl-devel pcre-devel \
  sqlite-devel libxslt libxslt-devel


 ENV RUBY_VERSION 2.3.1
 RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz \
  && tar -xf ruby-2.3.1.tar.gz \
  && cd ruby-2.3.1 \
  && ./configure --disable-install-doc --disable-install-rdoc --enable-shared \
  && make \
  && make install \
  && rm -rf ruby-2.3.1.tar.gz

 RUN gem install bundler \
  && gem install rails
