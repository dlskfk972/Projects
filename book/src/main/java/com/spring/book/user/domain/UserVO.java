package com.spring.book.user.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	private String userId;
	private String userPw;
	private String userName;
	private Date userBirth;
	private String phoneNum;
	private String email;
	private String auth;
	private Date userRegDate;
	private int userLevel;

	

}
