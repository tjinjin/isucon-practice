#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#include_recipe "client::public_keys"
include_recipe "client::benchmark"
include_recipe "client::rundeck"
