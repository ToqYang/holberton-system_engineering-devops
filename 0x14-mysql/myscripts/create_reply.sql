-- Make user
-- Set the password because is mysql 5.7
-- Give privileges to look the status of replication
-- Reload privileges
CREATE USER IF NOT EXISTS 'holberton_user'@'localhost';
SET PASSWORD FOR 'holberton_user'@'localhost' = 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO  'holberton_user'@'localhost';
FLUSH PRIVILEGES;
