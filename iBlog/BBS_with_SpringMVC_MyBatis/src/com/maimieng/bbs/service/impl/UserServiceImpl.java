package com.maimieng.bbs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.maimieng.bbs.mapper.UserMapper;
import com.maimieng.bbs.mapper.UserMapperCustom;
import com.maimieng.bbs.po.User;
import com.maimieng.bbs.po.UserVo;
import com.maimieng.bbs.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserMapperCustom userMapperCustom;

	@Override
	public boolean saveUser(UserVo userVo) throws Exception {
		boolean result = false;
		User user = userMapperCustom.verifyUserName(userVo.getUser().getUsername());
		if (user == null) {
			if (userMapper.insertSelective(userVo.getUser()) == 1) {
				result = true;
			}
		}
		return result;
	}

	@Override
	public boolean verifyLogin(UserVo userVo) throws Exception {
		boolean flag = false;
		if (userMapperCustom.verifyLogin(userVo) != null) {
			flag = true;
		}
		return flag;
	}

}
