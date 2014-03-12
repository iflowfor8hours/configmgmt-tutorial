#
# Cookbook Name:: flaskr
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/var/flaskr/data' do
  recursive true
  owner "vagrant"
end

template '/etc/init.d/flaskr' do
  source 'init_d_flaskr.erb'
  mode 0755
end

template '/var/flaskr/flaskr_config.py' do
  source 'flaskr_config.py.erb'
  owner "vagrant"
end

directory '/var/log/flaskr' do
  recursive true
  owner "vagrant"
end

service 'flaskr' do
  action :start
end
