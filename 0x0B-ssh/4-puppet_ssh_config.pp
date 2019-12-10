# Change the authentication pass and the file

exec { 'auth':
  path    => '/bin',
  command => 'echo -e "PasswordAuthentication no\nIdentityFile ~/.ssh/identity" > /etc/ssh/ssh_config'
}