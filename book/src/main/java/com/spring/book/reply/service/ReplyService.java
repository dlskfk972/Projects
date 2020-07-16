package com.spring.book.reply.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.book.building.repository.IBuildingMapper;
import com.spring.book.commons.paging.Page;
import com.spring.book.reply.domain.ReplyVO;
import com.spring.book.reply.repository.IReplyMapper;

@Service
public class ReplyService implements IReplyService{
	
	@Autowired
	private IReplyMapper replyMapper;
	
	@Autowired
	private IBuildingMapper buildingMapper;

	@Transactional
	@Override
	public void create(ReplyVO reply) {
		
		replyMapper.create(reply);

		
	}

	@Override
	public void update(ReplyVO reply) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer replyId, Integer buildingId) {
		// TODO Auto-generated method stub
		
	}
  
	@Override
	public List<ReplyVO> selectAll(Integer buildingId,Page page){
		Map<String, Object> datas = new HashMap<>();
		datas.put("buildingId", buildingId);
		datas.put("page", page);
		
		return replyMapper.selectAll(datas);
	}
	

	@Override
	public Integer countReplies(Integer buildingId) {
		return replyMapper.countReplies(buildingId);
	}

   

}
