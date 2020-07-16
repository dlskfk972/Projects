package com.spring.book.user;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.book.user.domain.UserVO;
import com.spring.book.user.repository.IUserMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:/spring/mvc-config.xml"})
public class UserMapperTest {
	
	@Autowired
	private IUserMapper userMapper;
	
	/**
	@Test 
	public void registerTest() throws Exception {
		UserVO user=new UserVO();
		user.setUserId("test02");
		user.setUserPw("abc1234");
		user.setUserName("이나라");
		user.setPhoneNum("010-1234-5678");
		user.setEmail("abc@naver.com");
		//user.setAuth("common");
		
		userMapper.register(user);
		System.out.println("===============");
		System.out.println("회원 등록 성공");
		
	}*/

	/**
	@Test
	public void isDuplicateIdTest(String userId) throws Exception {
		
		UserVO user=new UserVO();
		
		int result=userMapper.isDuplicateId("test01");
		
		if(result==0) {
			System.out.println("아이디사용가능");
		}else {
			System.out.println("아이디 중복됨");
		}
		
	}*/
	
	@Test
	public void getUserTest() throws Exception{
		
		UserVO user=userMapper.getOneUser("dlskfk972");
		System.out.println(user);
	}
	
	

}
