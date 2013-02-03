#
# Cookbook Name:: stx_db_postgres
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#need to enable PostgreSQL Global Development Group yum repository maintained by Devrim Gündüz for updated PostgreSQL packages
include_recipe 'postgresql::yum_pgdg_postgresql'


yum_package "postgresql-plperl.x86_64" do
  action [:install]
end

