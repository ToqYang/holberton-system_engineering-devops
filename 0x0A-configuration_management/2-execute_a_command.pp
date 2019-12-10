# Execute command

exec {'killmenow':
  command => '/usr/bin/pkill --full killmenow'
}