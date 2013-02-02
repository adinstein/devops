name             'stx_db_postgres'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures stx_db_postgres'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "stx_db_postgres:install", "Installs Station X specifc libraires, extensions, packages on top of Stadard Postgres"
