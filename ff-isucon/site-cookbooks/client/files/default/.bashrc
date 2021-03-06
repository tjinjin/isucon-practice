#!/bin/bash
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH
export PATH=/home/isucon/.local/ruby/bin:$PATH
export PATH=/home/isucon/.local/node/bin:$PATH
export PATH=/home/isucon/.local/python3/bin:$PATH
export PATH=/home/isucon/.local/perl/bin:$PATH
export PATH=/home/isucon/.local/php/bin:$PATH
export PATH=/home/isucon/.local/php/sbin:$PATH
export PATH=/home/isucon/.local/go/bin:$PATH
export GOROOT=/home/isucon/.local/go
export GOPATH=/home/isucon/webapp/go
export PATH=/home/isucon/.local/scala/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$GOPATH/bin:$PATH
HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
