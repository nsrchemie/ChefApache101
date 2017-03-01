#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


package 'httpd' do
  action :install
end

remote_file '/var/www/html/profile.jpg' do
 source 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/1/005/0a0/268/0507160.jpg'
end

template '/var/www/html/index.html' do
  source 'index.erb'
  action :create
end

service 'httpd' do
  action [:enable, :start]
end
