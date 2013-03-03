Rserv_user = node [:stx_pg_install][:rserv_user]
Rserv_password = node [:stx_pg_install][:rserv_password]


bash "Install RServe from Source" do
    user "root"
      cwd "/tmp"
      code <<-EOH
      s3cmd get s3://STX_DEPLOY/Rserve_1.7-0.tar.gz /tmp/Rserve_1.7-0.tar.gz
      R CMD INSTALL Rserve_1.7-0.tar.gz 
      s3cmd get s3://STX_DEPLOY/Rserv.conf /tmp/Rserv.conf
      mv /tmp/Rserv.conf /etc/Rserv.conf
      echo #{rserv_user}' '#{rserv_password} > /etc/Rserv.pwd 
    EOH
    end

