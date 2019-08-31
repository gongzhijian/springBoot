
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL COMMENT '用户名',
  `password` varchar(255) default NULL COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '角色名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sys_role_user` (
  `id` int(11) NOT NULL auto_increment,
  `Sys_User_id` int(11) default NULL,
  `Sys_Role_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '权限名',
  `description` varchar(255) default NULL COMMENT '描述',
  `url` varchar(255) default NULL COMMENT '地址',
  `pid` int(11) default NULL COMMENT '父级权限',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sys_permission_role` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) default NULL,
  `permission_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



insert into SYS_USER (id,username, password) values (1,'admin', 'admin');
insert into SYS_USER (id,username, password) values (2,'abel', 'abel');

insert into SYS_ROLE(id,name) values(1,'ROLE_ADMIN');
insert into SYS_ROLE(id,name) values(2,'ROLE_USER');

insert into SYS_ROLE_USER(SYS_USER_ID,Sys_Role_id) values(1,1);
insert into SYS_ROLE_USER(SYS_USER_ID,Sys_Role_id) values(2,2);

BEGIN;
INSERT INTO `Sys_permission` VALUES ('1', 'ROLE_HOME', 'home', '/', null), ('2', 'ROLE_ADMIN', 'ABel', '/admin', null);
COMMIT;

BEGIN;
INSERT INTO `Sys_permission_role` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '2', '1');
COMMIT;