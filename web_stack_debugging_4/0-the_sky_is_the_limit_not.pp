# Increases the ULIMIT for Nginx to handle high traffic without failed requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx && sudo service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
}
