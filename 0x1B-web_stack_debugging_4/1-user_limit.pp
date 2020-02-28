# Execute change to the hard and soft limit

exec {'change-hard':
  provider => shell,
  command  => 'sudo sed -i "s/holberton hard nofile 5/holberton hard nofile 5000/" /etc/security/limits.conf',
  before   => Exec['change-soft'],
}

exec {'change-soft':
  provider => shell,
  command  => 'sudo sed -i "s/holberton soft nofile 4/holberton soft nofile 4000/" /etc/security/limits.conf',
}
