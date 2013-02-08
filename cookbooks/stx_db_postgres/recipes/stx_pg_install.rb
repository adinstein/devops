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

#install PL/R

yum_package "plr91.x86_64" do
  action [:install]
end

#commneting out and using rightscript for the demo.  We will need to understand why "user" is not supported by this version of right link as indicated in the logs
#bash "Initialize Postgres" do
#    user "postgres"
#      code <<-EOH
#      ln -s /usr/pgsql-9.1/ pgsql 
#      # need to parameterize the location the db is initialized in below this needs to be the same directory as the storage stripe and can use the same attirbute
#      /usr/local/pgsql/bin/initdb /mnt/storage1/ 
#      EOH
#    end

#putting this in its own recipe as part of the workaround for the above rightlink issue
#start the postgres service

#service "postgresql-9.1" do 
  #  action :start, :immediately 
#  action :start
#end


