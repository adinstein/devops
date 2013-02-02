#
# Cookbook Name:: stx_db_postgres
# Recipe:: install
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
rightscale_marker :begin

version = "9.1"
node[:db][:version] = version
node[:db][:provider] = "db_postgres"

log " Setting up the Station X PostgreSQL Environment"

# Set PostgreSQL 9.1 specific node variables in this recipe.
#
command "wget --directory-prefix=/tmp/ http://yum.pgrpms.org/9.1/redhat/rhel-6-x86_64/pgdg-centos91-9.1-4.noarch.rpm"
command "rpm -i /tmp/pgdg-centos91-9.1-4.noarch.rpm"

node[:db_postgres][:server_packages_install] = value_for_platform(
  ["centos", "redhat"] => {
    "default" => [
      "postgresql91-libs",
      "postgresql91",
      "postgresql91-devel",
      "postgresql91-server",
      "postgresql91-contrib"
      "postgresql91-plperl"
    ]
  },
  "default" => []
)

# Platform specific attributes
#case node[:platform]
#when "centos", "redhat"
#  node[:db_postgres][:basedir] = "/var/lib/pgsql/#{version}"
#  node[:db_postgres][:confdir] = "/var/lib/pgsql/#{version}/data"
#  node[:db_postgres][:datadir] = "/var/lib/pgsql/#{version}/data"
#end
#
#node[:db][:init_timeout]= "60"
#
## PostgreSQL specific commands for db_sys_info.log file
#node[:db][:info_file_options] = [
#  "pg_config --version",
#  "cat #{node[:db_postgres][:datadir]}/postgresql.conf"
#]
#node[:db][:info_file_location] = node[:db_postgres][:datadir]
#
rightscale_marker :end
