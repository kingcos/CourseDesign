package com.maimieng.bbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.maimieng.bbs.mapper.ReplyMapper;
import com.maimieng.bbs.mapper.ReplyMapperCustom;
import com.maimieng.bbs.po.Reply;
import com.maimieng.bbs.po.ReplyVo;
import com.maimieng.bbs.service.ReplyService;

public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyMapper replyMapper;
	@Autowired
	private ReplyMapperCustom replyMapperCustom;
	
	@Override
	public boolean saveReply(ReplyVo replyVo) throws Exception {
		boolean result = false;
		if (replyMapper.insertSelective(replyVo.getReply()) == 1) {
			result = true;
		}
		return result;
	}

	@Override
	public List<Reply> listReply(Integer remsid) throws Exception {
		List<Reply> list = replyMapperCustom.listReply(remsid);
		return list;
	}

}
