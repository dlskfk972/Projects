package com.spring.book.user.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.book.user.domain.LoginVO;
import com.spring.book.user.domain.UserVO;
import com.spring.book.user.repository.IUserMapper;


@Service
public class UserService implements IUserService {

	@Autowired
	private IUserMapper userMapper;
	
	

	@Override
	public void register(UserVO user) throws Exception {
		userMapper.register(user);
	}

	@Override
	public Integer isDuplicateId(String userId) throws Exception{
		return userMapper.isDuplicateId(userId);
	}

	@Override
	public UserVO login(LoginVO login) throws Exception {
		return userMapper.login(login);
	}


	@Override
	public UserVO getUserWithSessionId(String sessionId) throws Exception {
		return userMapper.getUserWithSessionId(sessionId);
	}

	@Override
	public UserVO getOneUser(String userId) throws Exception {
		return userMapper.getOneUser(userId);
	}

	@Override
	public void dropUser(String id, String pw) throws Exception {
		Map<String, Object> datas=new HashMap<>();
		datas.put("id",id);
		datas.put("pw",pw);
		userMapper.dropUser(datas);
	}
	
}
