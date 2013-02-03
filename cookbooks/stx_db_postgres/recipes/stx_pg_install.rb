#
# Cookbook Name:: stx_db_postgres
# Recipe:: stx_pg_install.rb
#
# Copyright 2013, cwStation X Inc.
#
# All rights reserved - Do Not Redistribute
#

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


