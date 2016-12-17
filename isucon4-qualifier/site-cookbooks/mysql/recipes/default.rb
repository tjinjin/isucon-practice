#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/my.cnf' do
  notifies :restart, 'service[mysqld]'
end

service 'mysqld' do
  action [:enable, :start]
  supports restart: true

end
