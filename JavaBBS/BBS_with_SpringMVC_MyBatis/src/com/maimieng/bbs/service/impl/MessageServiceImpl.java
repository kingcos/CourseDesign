package com.maimieng.bbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.maimieng.bbs.mapper.MessageMapper;
import com.maimieng.bbs.mapper.MessageMapperCustom;
import com.maimieng.bbs.po.Message;
import com.maimieng.bbs.po.MessageVo;
import com.maimieng.bbs.service.MessageService;

public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageMapper messageMapper;
	@Autowired
	private MessageMapperCustom messageMapperCustom;
	
	@Override
	public boolean saveMessage(MessageVo messageVo) throws Exception {
		boolean result = false;
		if (messageMapper.insertSelective(messageVo.getMessage()) == 1) {
			result = true;
		}
		return result;
	}

	@Override
	public List<Message> listMessages() throws Exception {
		return messageMapperCustom.listMessages();
	}

	@Override
	public Message getMessage(Integer msid) throws Exception {
		return messageMapperCustom.getMessage(msid);
	}

}
