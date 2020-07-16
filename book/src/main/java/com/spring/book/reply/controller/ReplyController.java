package com.spring.book.reply.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.book.commons.paging.Page;
import com.spring.book.commons.paging.PageCreator;
import com.spring.book.reply.domain.ReplyVO;
import com.spring.book.reply.service.IReplyService;

@RestController
public class ReplyController {
	
	@Autowired
	private IReplyService replyService;
	
	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	
	
		
		//댓글 목록 요청에 대한 처리
		@GetMapping("/reply/{buildingId}/{page}")
		public Map<String, Object> list(@PathVariable Integer buildingId,
				                   @PathVariable Integer page) {
			
			Page paging=new Page();
			paging.setPage(page);
			
			
			Integer replyCnt=replyService.countReplies(buildingId);
			PageCreator pc = new PageCreator(paging, replyCnt);
			
			List<ReplyVO> replies = replyService.selectAll(buildingId, paging);
			
			Map<String, Object> replyMap = new HashMap<>();
			replyMap.put("pc", pc);
			replyMap.put("replies", replies);
			replyMap.put("replyCnt", replyCnt);
			
			return replyMap;
		}

	//댓글 쓰기 요청 처리
	@PostMapping("/reply")
	public String replyWrite(@RequestBody ReplyVO reply) throws Exception{
		
		replyService.create(reply);
		return "replyRegSuccess";
	}

}
