package com.maimieng.bbs.mapper;

import java.util.List;

import com.maimieng.bbs.po.Reply;


public interface ReplyMapperCustom {
	public List<Reply> listReply(Integer remsid) throws Exception;
}