package com.draft.lms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelectCourseController {
	@RequestMapping(value="/onlineSC")
	public String online(){
		return "content/selectCourse/onlineSC";
	}
}
