package com.maimieng.bbs.service;

import java.util.List;

import com.maimieng.bbs.po.Message;

public interface MessageService {
	public boolean saveMessage(Message message) throws Exception;
	public List<Message> listMessages() throws Exception;
	public Message getMessage(Integer msid) throws Exception;
}
