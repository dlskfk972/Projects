package com.spring.book.reply.service;

import java.util.List;

import com.spring.book.commons.paging.Page;
import com.spring.book.reply.domain.ReplyVO;

public interface IReplyService {
	
	//댓글 쓰기 기능
	void create(ReplyVO reply);
	
	//댓글 수정 기능
	void update(ReplyVO reply);
	
	//댓글 삭제 기능
	void delete(Integer replyId,Integer buildingId);
	
	//원본 게시물 삭제시 해당 게시물의 댓글 전체 삭제 기능
	
	//댓글 목록 조회 기능
	List<ReplyVO> selectAll(Integer buildingId,Page page);
	
	//특정 게시물의 총 댓글 수 조회 기능
	Integer countReplies(Integer buildingId);
}
