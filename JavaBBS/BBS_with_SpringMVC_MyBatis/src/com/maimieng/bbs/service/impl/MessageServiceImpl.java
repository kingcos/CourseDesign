package com.maimieng.bbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.maimieng.bbs.mapper.MessageMapper;
import com.maimieng.bbs.mapper.MessageMapperCustom;
import com.maimieng.bbs.mapper.UserMapper;
import com.maimieng.bbs.mapper.UserMapperCustom;
import com.maimieng.bbs.po.Message;
import com.maimieng.bbs.po.MessageVo;
import com.maimieng.bbs.po.User;
import com.maimieng.bbs.po.UserVo;
import com.maimieng.bbs.service.MessageService;
import com.maimieng.bbs.service.UserService;

public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageMapper messageMapper;
	@Autowired
	private MessageMapperCustom messageMapperCustom;
	
//	@Override
//	public boolean verifyLogin(UserVo userVo) throws Exception {
//		boolean flag = false;
//		if (userMapperCustom.verifyLogin(userVo) != null) {
//			flag = true;
//		}
//		return flag;
//	}
	
	@Override
	public boolean saveMessage(MessageVo messageVo) throws Exception {
		boolean result = false;

		return result;
	}

	@Override
	public List<Message> listMessages() throws Exception {
		return messageMapperCustom.listMessages();
	}

	@Override
	public Message getMessage(Integer msid) throws Exception {

		return null;
	}

}
