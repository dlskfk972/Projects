package com.spring.book.reply;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.book.building.domain.Building;
import com.spring.book.commons.paging.Page;
import com.spring.book.reply.domain.ReplyVO;
import com.spring.book.reply.repository.IReplyMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/spring/mvc-config.xml"})
public class ReplyMapperTest {
	
	@Autowired
	private IReplyMapper replymapper;
	
	@Test
	public void register() {
		ReplyVO reply=new ReplyVO();
		
		reply.setBuildingId(48);
		reply.setReplyId(2);
		reply.setReplyText("시설 별로임");
		reply.setReplyWriter("이나라");
		

		replymapper.create(reply);
		System.out.println("등록!");
		
	}
	
	
	
	
}
