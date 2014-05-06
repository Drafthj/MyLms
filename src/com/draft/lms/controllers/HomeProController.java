package com.draft.lms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeProController {
	@RequestMapping("/homePro/ajax_recentcourse_list")
	public String recentCourse(){
		return "content/homePro/ajax_recentcourse_list";
	}
}
