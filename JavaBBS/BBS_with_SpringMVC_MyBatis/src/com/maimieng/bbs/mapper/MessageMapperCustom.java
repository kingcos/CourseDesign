package com.maimieng.bbs.mapper;

import java.util.List;

import com.maimieng.bbs.po.Message;

public interface MessageMapperCustom {
	public List<Message> listMessages() throws Exception;
	public Message getMessage(Integer msid) throws Exception;
}