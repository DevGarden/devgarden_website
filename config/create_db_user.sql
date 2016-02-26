create user 'devgarden_web'@'localhost' IDENTIFIED BY 'devgarden_web';
grant all on devgarden_web_test.* to 'devgarden_web'@'localhost';
grant all on devgarden_web_development.* to 'devgarden_web'@'localhost';
flush privileges;

