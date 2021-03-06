#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
web_home = '/home/isucon/webapp/ruby'
home_dir = 'webapp/ruby'

cookbook_file "#{web_home}/Gemfile" do
  source "#{home_dir}/Gemfile"
  notifies :run, 'execute[bundle install]', :immediately
end

execute 'bundle install' do
  command "cd #{web_home};bundle install"
#  cwd "#{web_home}"
  action :nothing
#  not_if"cd #{web_home};bundle check"
end

service 'isuxi.ruby' do
  supports restart: true
end

cookbook_file "#{web_home}/app.rb" do
  source "#{home_dir}/app.rb"
  notifies :restart, 'service[isuxi.ruby]'
end

cookbook_file "#{web_home}/unicorn_config.rb" do
  source "#{home_dir}/unicorn_config.rb"
  notifies :restart, 'service[isuxi.ruby]'
end

cookbook_file "#{web_home}/views/index.erb" do
  source "#{home_dir}/views/index.erb"
  notifies :restart, 'service[isuxi.ruby]'
end

cookbook_file "#{web_home}/views/friends.erb" do
  source "#{home_dir}/views/friends.erb"
  notifies :restart, 'service[isuxi.ruby]'
end

cookbook_file "#{web_home}/views/footprints.erb" do
  source "#{home_dir}/views/footprints.erb"
  notifies :restart, 'service[isuxi.ruby]'
end
