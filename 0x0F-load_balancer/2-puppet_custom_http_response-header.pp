# Update all the O.S
# Do the response

exec {'Update':
  provider => shell,
  command  => 'sudo apt-get -y upgrade; sudo apt-get -y update; sudo apt-get -y install nginx; echo "Holberton School" | sudo tee /var/www/html/index.html',
  before   => Exec['res'],
}

exec {'res':
  provider => shell,
  command  => 'sudo sed -i "11i\\\tadd_header X-Served-By ${hostname};" /etc/nginx/nginx.conf; sudo service nginx restart;',
}