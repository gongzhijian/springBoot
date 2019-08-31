package com.us.example.dao;

import com.us.example.domain.SysUser;
import tk.mybatis.mapper.common.Mapper;


public interface UserDao extends Mapper<SysUser> {
   SysUser findByUserName(String username);
}
