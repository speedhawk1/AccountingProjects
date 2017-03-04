DROP DATABASE IF EXISTS exam;
CREATE DATABASE IF NOT EXISTS exam;

# user table
DROP TABLE IF EXISTS exam.user;
CREATE TABLE exam.user (
  id       INT                   AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(255) UNIQUE
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码',
  role     VARCHAR(255) NOT NULL DEFAULT 'user'
  COMMENT 'admin:管理员; user:普通用户'
)
  COMMENT '用户表';

INSERT INTO exam.user VALUES (NULL, 'a', 'a', 'admin');

SELECT *
FROM exam.user;

DROP TABLE IF EXISTS exam.projects_recorder;
CREATE TABLE exam.projects_recorder(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'pk',
  project VARCHAR(255) UNIQUE COMMENT 'project',
  startTime VARCHAR(15) COMMENT 'startTime',
  endTime VARCHAR(15) COMMENT 'endTime',
  scales DECIMAL(65) COMMENT 'scales',
  accountant VARCHAR(11) COMMENT 'accountant'
);

INSERT INTO exam.projects_recorder VALUE (NULL,'test1','2017-2-23','2027-2-23',50000.00,'xiaohj');

# DELETE FROM exam.projects_recorder WHERE id=1;
SELECT * FROM exam.projects_recorder;
