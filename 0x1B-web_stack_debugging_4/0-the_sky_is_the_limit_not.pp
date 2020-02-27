# Update all the O.S
# Do the response

exec {'fx-limit':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/i" /etc/default/nginx',
  before   => Exec['res'],
}

exec {'res':
  provider => shell,
  command  => 'sudo service nginx restart;',
}
