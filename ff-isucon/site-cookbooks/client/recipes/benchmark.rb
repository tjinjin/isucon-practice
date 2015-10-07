#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
git "/home/isucon/isucon5-benchmarker" do
  repository "https://github.com/karupanerura/isucon5-benchmarker"
  user "isucon"
  group "isucon"
  action :checkout
end

cookbook_file "/home/isucon/benchmark.sh" do
  mode '0755'
end
