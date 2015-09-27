#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/etc/nginx/nginx.conf' do
  notifies :reload, 'service[nginx]'
end

service 'nginx' do
  action [:enable, :start]
  supports reload: true
end

directory '/home/isucon/webapp/ruby/tmp/' do
  owner 'isucon'
  group 'isucon'
  mode '0755'
end

directory '/home/isucon/webapp/ruby/tmp/sockets' do
  owner 'isucon'
  group 'isucon'
  mode '0755'
end

cookbook_file '/home/isucon/webapp/ruby/Procfile' do
  notifies :restart, 'service[supervisord]'
end

cookbook_file '/home/isucon/webapp/ruby/unicorn_config.rb' do
  notifies :restart, 'service[supervisord]'
end

service 'supervisord' do
  action [:enable, :start]
  supports restart: true
end
