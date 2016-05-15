package com.maimieng.bbs.service;

import java.util.List;

import com.maimieng.bbs.po.Reply;

public interface ReplyService {
	public boolean saveReply(Reply reply) throws Exception;
	public List<Reply> listReply(Integer remsid) throws Exception;
}
