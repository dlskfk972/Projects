package com.spring.book.user.service;

import java.sql.Date;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.book.user.domain.LoginVO;
import com.spring.book.user.domain.UserVO;

public interface IUserService {
	
	//회원정보 등록
	void register(UserVO user) throws Exception;
	
	//데이터 중복체크
	Integer isDuplicateId(String userId) throws Exception;
	
	//로그인 시도 회원정보 조회처리
	UserVO login(LoginVO login) throws Exception;
		
	//세션아이디 검증 후 회원정보 불러오는 처리
	UserVO getUserWithSessionId(String sessionId) throws Exception;
		
	//유저 개인 정보
	UserVO getOneUser(String userId) throws Exception;
		
	//회원탈퇴
	void dropUser(String Id,String pw) throws Exception;

}
