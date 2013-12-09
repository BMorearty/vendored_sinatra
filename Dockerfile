FROM ubuntu:12.10
MAINTAINER Brian Morearty, brian@morearty.org
RUN apt-get update
RUN apt-get install -y build-essential ruby1.9.3 time
RUN gem install rubygems-update bundler --no-ri --no-rdoc
RUN update_rubygems
ADD . /opt/apps/vendored_sinatra
WORKDIR /opt/apps/vendored_sinatra
RUN time -p bundle install --deployment
