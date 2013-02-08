name             'stx_db_postgres'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures stx_db_postgres'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "postgresql"

recipe "stx_db_postgres::stx_pg_install","Installs and Configures base postgres install for Station X"
recipe "stx_db_postgres::stx_postbio_install","Installs postbio from source loacated on S3"
recipe "stx_db_postgres::stx_pg_control","Starts the postgres service"
