# Install the response

exec {'http_res':
  path    => '/bin',
  command => 'sudo apt-get -y upgrade && sudo apt-get -y update && sudo apt-get -y install nginx && sudo sed -i "11i\\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf && sudo service nginx restart;'
}