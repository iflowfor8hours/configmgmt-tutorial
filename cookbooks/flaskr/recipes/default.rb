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
end

template '/var/flaskr/flaskr_config.py' do
  source 'flaskr_config.py.erb'
end
