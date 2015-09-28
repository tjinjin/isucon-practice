#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/my.cnf'

service 'mysql' do
  action [:enable, :start]
  supports restart: true

end
