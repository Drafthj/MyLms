package com.draft.lms.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.draft.lms.services.UserManage;

@Controller
public class LoginController {
	@Autowired
	private UserManage userManage;
	@RequestMapping("/login") 
	public String login(){
		return "login";
	}
}
