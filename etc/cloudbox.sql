SET LOCK_MODE 1;

DROP TABLE IF EXISTS usr CASCADE;


--用户管理
CREATE TABLE usr (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(36) NOT NULL UNIQUE,
  passwd VARCHAR(128) NOT NULL,
);

// default user name: admin, password: cloudbox, hashed by sha-256
INSERT INTO usr (name, passwd) values ('admin', '51c3762d0a5ee570da1e1969e6e197ab380743815b28b63844dbad55ce74ab9e');

COMMIT;
