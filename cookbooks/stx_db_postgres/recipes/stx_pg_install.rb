#
# Cookbook Name:: stx_db_postgres
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


yum_package "postgresql-plperl.x86_64" do
  action [:install]
end

