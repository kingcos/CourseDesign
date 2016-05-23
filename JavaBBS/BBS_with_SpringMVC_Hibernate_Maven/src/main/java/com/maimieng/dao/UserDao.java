package com.maimieng.dao;

import com.maimieng.entity.User;

public interface UserDao {
	public boolean register(User user);
	public boolean login(User user);
	
}
