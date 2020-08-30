
CREATE TABLE dept (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  dept_name varchar(50) NOT NULL,
  describe varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE emp (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  emp_name varchar(50) DEFAULT NULL,
  gender enum('男','女') NOT NULL,
  age tinyint(3) DEFAULT NULL,
  phone varchar(13) DEFAULT NULL,
  job varchar(50) DEFAULT NULL,
  dept_name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select dept_name as '部门名称',COUNT(dept_name) as '员工数量' from emp GROUP BY dept_name;

select emp_name,age,dept_name from emp where age in (select MAX(age) from emp GROUP BY dept_name);

select emp_name as '员工姓名',phone as '手机号',CONCAT(LEFT(phone,3),'****',RIGHT(phone,4)) as '脱敏手机号' from emp where phone like '%0000%';

