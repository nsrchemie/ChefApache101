#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.erb'
  action :create
end

service 'httpd' do
  action [:enable, :start]
end
