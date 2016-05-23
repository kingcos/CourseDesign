package com.maimieng.bbs.service;

import com.maimieng.bbs.po.UserVo;

public interface UserService {
	public boolean saveUser(UserVo userVo) throws Exception;
	public boolean verifyLogin(UserVo userVo) throws Exception;
}
