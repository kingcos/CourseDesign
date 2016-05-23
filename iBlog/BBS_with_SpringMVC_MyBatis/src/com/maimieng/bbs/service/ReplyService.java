package com.maimieng.bbs.service;

import java.util.List;

import com.maimieng.bbs.po.Reply;
import com.maimieng.bbs.po.ReplyVo;

public interface ReplyService {
	public boolean saveReply(ReplyVo replyVo) throws Exception;
	public List<Reply> listReply(Integer remsid) throws Exception;
}
