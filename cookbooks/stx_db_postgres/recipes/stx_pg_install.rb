#
# Cookbook Name:: stx_db_postgres
# Recipe:: stx_pg_install.rb
#
# Copyright 2013, cwStation X Inc.
#
# All rights reserved - Do Not Redistribute
#
#todo:
#  1. allow attributes for setting postgres version
#  2. instead of installing all of these having a dependancy on 3rd party mirrors, we should download and store these on S3 and then allow installation from S3 or at least have an option to do so



#set yum repository up for postgresql 9.1
include_recipe 'postgresql::yum_pgdg_postgresql'

#install postgress (server, devel, contrib, plperl)
yum_package "postgresql91-server.x86_64" do
  action [:install]
end

yum_package "postgresql91-devel.x86_64" do
  action [:install]
end

yum_package "postgresql91-contrib.x86_64" do
  action [:install]
end

yum_package "postgresql91-plperl.x86_64" do
  action [:install]
end

#install R

yum_package "R.x86_64" do
  action [:install]
end

include_recipe 'postgresql::yum_pgdg_postgresql'


yum_package "postgresql91-server.x86_64" do
  action [:install]
end

yum_package "postgresql91-devel.x86_64" do
  action [:install]
end

yum_package "postgresql91-contrib.x86_64" do
  action [:install]
end

yum_package "postgresql91-plperl.x86_64" do
  action [:install]
end


