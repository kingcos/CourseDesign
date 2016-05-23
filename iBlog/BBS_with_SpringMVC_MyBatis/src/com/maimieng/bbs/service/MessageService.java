package com.maimieng.bbs.service;

import java.util.List;

import com.maimieng.bbs.po.Message;
import com.maimieng.bbs.po.MessageVo;

public interface MessageService {
	public boolean saveMessage(MessageVo messageVo) throws Exception;
	public List<Message> listMessages() throws Exception;
	public Message getMessage(Integer msid) throws Exception;
}
