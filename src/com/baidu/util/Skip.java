package com.baidu.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/skip")
public class Skip {

	@RequestMapping("/goIndex")
	public String goIndex(){
		return "index";
	}
	
	@RequestMapping("/goSignUp")
	public String goSignUp(){
		return "Sign_up";
	}
	
	@RequestMapping("/goLogin")
	public String goLogin(){
		return "login";
	}
	
	@RequestMapping("/goRegister")
	public String goRegister(){
		return "register";
	}
	
	@RequestMapping("/goPage")
	public String goPage(){
		return "page";
	}
	
	@RequestMapping("/goCourses_IBM")
	public String goCourses_IBM(){
		return "Courses_IBM";
	}
	
}
