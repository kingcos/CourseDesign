package com.maimieng.bbs.mapper;

import com.maimieng.bbs.po.User;
import com.maimieng.bbs.po.UserVo;

public interface UserMapperCustom {
	public User verifyUserName(String userName) throws Exception;
	public User verifyLogin(UserVo userVo) throws Exception;
}