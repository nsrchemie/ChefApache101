#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content "<h2>Hello World!</h2>
	<p>Your IP Address is: #{node['ipaddress']}</p>
	<p>Hostname: #{node['ipaddress']}</p>"
end

service 'httpd' do
  action [:enable, :start]
end
