package com.maimieng.entity;

import com.maimieng.dao.UserDao;

public class UserManagerImpl implements UserManager {

	private UserDao userDao;

	public boolean register(User user) {
		return userDao.register(user);
	}

	public boolean login(User user) {
		return userDao.login(user);
	}

}
