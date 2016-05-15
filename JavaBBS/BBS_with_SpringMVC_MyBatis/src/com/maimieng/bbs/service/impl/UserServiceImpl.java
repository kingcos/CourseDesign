package com.maimieng.bbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.maimieng.bbs.mapper.UserMapper;
import com.maimieng.bbs.mapper.UserMapperCustom;
import com.maimieng.bbs.po.User;
import com.maimieng.bbs.po.UserVo;
import com.maimieng.bbs.service.UserService;

public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapperCustom userMapperCustom;
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int saveUser(User user) throws Exception {
		return userMapper.insertSelective(user);
	}

	@Override
	public boolean verifyLogin(UserVo userVo) throws Exception {
		boolean flag = false;
		if (userMapperCustom.verifyLogin(userVo) != null) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean verifyUserName(String username) throws Exception {
		boolean flag = false;
		User user = new User();
		user.setUsername(username);
		if (userMapperCustom.verifyUserName(username) != null) {
			flag = true;
		}
		return flag;
	}
	
	
}
