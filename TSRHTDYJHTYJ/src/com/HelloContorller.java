package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloContorller {
	@RequestMapping("login")
	public String test(){
		return "login";
	}

}
