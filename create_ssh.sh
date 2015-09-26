#!/bin/sh

PWD=`pwd`
FILENAME=isucon-practice.conf
if [ -L ~/.ssh/conf.d/$FILENAME ];then
  rm ~/.ssh/conf.d/$FILENAME
  ln -s $PWD/.ssh/$FILENAME ~/.ssh/conf.d/
fi
