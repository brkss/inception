CREATE USER 'wuser'@'%' IDENTIFIED BY 'wpass';
GRANT ALL PRIVILEGES ON wp.* TO 'wuser'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';


CREATE DATABASE wp;
