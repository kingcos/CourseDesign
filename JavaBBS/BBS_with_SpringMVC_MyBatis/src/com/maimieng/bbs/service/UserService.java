package com.maimieng.bbs.service;

import com.maimieng.bbs.po.User;
import com.maimieng.bbs.po.UserVo;

public interface UserService {
	public int saveUser(User user) throws Exception;
	public boolean verifyLogin(UserVo userVo) throws Exception;
	public boolean verifyUserName(String username) throws Exception;
}
