# Change the name .phpp to php

exec { 'change-name':
  path     => 'usr/bin/:/bin/',
  command  => "sed -i -e 's/.phpp/.php/g' /var/www/html/wp-settings.php",
  provider => 'shell',
}
