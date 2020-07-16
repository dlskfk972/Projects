package com.spring.book.user.repository;



import java.util.List;
import java.util.Map;

import com.spring.book.user.domain.LoginVO;
import com.spring.book.user.domain.UserVO;

public interface IUserMapper {
	
	//회원등록 기능
	void register(UserVO user) throws Exception;
	
	//중복확인 체크
	Integer isDuplicateId(String userId) throws Exception;
	
	//로그인 시도 회원정보 조회처리
	UserVO login(LoginVO login) throws Exception;
	
	//자동 로그인 유지 처리
	void keepLogin(Map<String, Object>datas) throws Exception;
	
	//세션아이디 검증 후 회원정보 불러오는 처리
	UserVO getUserWithSessionId(String sessionId) throws Exception;
	
	//유저 개인 정보
	UserVO getOneUser(String userId) throws Exception;
	
	//회원탈퇴
	void dropUser(Map<String, Object> datas) throws Exception;
	
	//전체 회원관리
	
	//전체 회원 수 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
