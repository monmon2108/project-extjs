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

RUN yum update -y \
&& yum install -y make gcc gcc-c++ wget vim mlocate which tar bzip2 zip unzip net-tools rsync python-setuptools glibc-static \
&& rpm -iUvh http://yum.postgresql.org/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm \
&& yum install -y\
  postgresql95-9.5.*\
  postgresql95-devel-9.5.*\
  postgresql95-libs-9.5.*\
  postgresql95-plpython-9.5.*\
  postgresql95-python-*\
  postgresql95-python-debuginfo-*\
  postgresql95-server-9.5.* \
|| yum clean all

ENV PATH $PATH:/usr/pgsql-9.5/bin


 RUN gem install bundler \
  && gem install rails


 COPY ProjExtjs/Gemfile /Gemfile
 COPY ProjExtjs/Gemfile.lock /Gemfile.lock
 RUN bundle install
