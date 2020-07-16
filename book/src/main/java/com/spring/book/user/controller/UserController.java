package com.spring.book.user.controller;


import java.util.HashMap;
import java.util.Map;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.book.user.domain.LoginVO;
import com.spring.book.user.domain.UserVO;
import com.spring.book.user.service.IUserService;




@RestController
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	//회원등록 페이지 화면 요청처리 메서드
	@GetMapping("/register")
	public ModelAndView registerGet() {
		return new ModelAndView("user/join");
	}
	
	//회원가입 처리요청
	
	@PostMapping(value="/register")
	public String register(@RequestBody UserVO user) throws Exception {

    	userService.register(user);

		return "joinSuccess";
	}
	
	@PostMapping("/idCheck")
	public Map<String, Object> confirmId(@RequestBody String userId) throws Exception{
	
		Map<String,Object> data=new HashMap<>();
		
		int result=userService.isDuplicateId(userId);
		
		if(result==0) {
			System.out.println("아이디 사용가능");
			data.put("confirm", "OK");
		} else {
			System.out.println("아이디 중복");
			data.put("confirm","NO");
		}
		
		return data;
	
	}
	
	@GetMapping("/auth")
	public ModelAndView auth() {
		ModelAndView mv=new ModelAndView();
		return new ModelAndView("/user/auth"); 
	}
	
	
	@GetMapping("/login")
	public ModelAndView loginPage() {
		ModelAndView mv=new ModelAndView();
		return new ModelAndView("/user/login"); 
	}
	
	//로그인 검증 요청
	@PostMapping("/loginCheck")
	public ModelAndView login(LoginVO login,HttpSession session,Model model) throws Exception{
		
		UserVO user=userService.login(login);
		
		if(user==null) {
			model.addAttribute("message","ID나 PW가 틀립니다");
			System.out.println("아이디나 비밀번호가 틀렸습니다.");
			return new ModelAndView("/user/login");
		}else{
			session.setAttribute("loginLevel", user.getUserLevel());
			session.setAttribute("loginId", user.getUserId());
			System.out.println("아이디: "+user.getUserId()+", 권한: "+user.getUserLevel());
			return new ModelAndView("home");
		}
	}
	
	//로그아웃 처리기능
	@GetMapping("/logout")
	public ModelAndView logout(UserVO user,Model model, HttpSession session) {
		session.setAttribute("loginId", null);
		return new ModelAndView("home");
	}
	
	//유저 개인정보
	@RequestMapping("/getuser")
	public ModelAndView getOneUser(String userId, Model model)throws Exception{
		
		model.addAttribute("getUser", userService.getOneUser(userId));
    	System.out.println(userService.getOneUser(userId));
    	return new ModelAndView("user/get_one_user");
		
	}

	
	
	
	

}
