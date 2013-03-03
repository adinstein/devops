bash "Install PostBio from Source" do
    user "root"
      cwd "/tmp"
      code <<-EOH
      s3cmd get s3://STX_DEPLOY/postbio-0.2.tar.gz /tmp/temp/postbio-0.2.tar.gz 
      #wget http://www.example.com/tarball.tar.gz
      gzip -d /tmp/postbio-0.2.tar.gz
      tar -xvf /tmp/postbio-0.2.tar
      cd /tmp/postbio-0.2
      sed -i '/^CFLAGS=-g/ s/$/-fPIC/' i /tmp/postbio-0.2/fmindexV2/makefile	
      make
      make install
      EOH
    end

bash "Make PostBio extension available to Postgres template1" do
    user "postgres"
      code <<-EOH
      psql -U postgres template1 -f /tmp/postbio-0.2/postbio.sql 
      EOH
    end

