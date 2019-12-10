# Make a file

file {'/tmp/holberton':
  ensure  => 'filehol',
  path    => '/tmp/holberton',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet'
}