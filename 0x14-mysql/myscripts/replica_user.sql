-- Make user
-- Set the password because is mysql 5.7
-- Replication slave permissions
-- Give privileges
-- Reload privileges
DROP USER IF EXISTS 'replica_user'@'%';
CREATE USER IF NOT EXISTS 'replica_user'@'%';
SET PASSWORD FOR 'replica_user'@'%' = 'betty';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
