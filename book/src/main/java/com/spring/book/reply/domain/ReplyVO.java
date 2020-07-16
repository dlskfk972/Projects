package com.spring.book.reply.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyVO {
	
	private Integer replyId;
	private String replyText;
	private String replyWriter;
	private Date regDate;
	private Date updateDate;
	private Integer buildingId;

}
