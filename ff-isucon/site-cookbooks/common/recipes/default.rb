#
# Cookbook Name:: common
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'language-pack-ja-base'
package 'language-pack-ja'

execute 'update locale' do
  command 'update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP.ja"'
end
