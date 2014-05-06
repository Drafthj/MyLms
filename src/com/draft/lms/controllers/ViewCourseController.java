package com.draft.lms.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.draft.lms.domain.CourseViewData;
import com.draft.lms.domain.Test;
import com.draft.lms.domain.User;
import com.draft.lms.services.CourseViewManage;

@Controller
public class ViewCourseController {
	@Autowired
	private CourseViewManage courseViewManage;
	@RequestMapping(value="/savecoursedata",method=RequestMethod.POST)
	@ResponseBody
	//studydata = {progress:0,totaltime:0,location:"",status:"",score:"0",suspenddata:"",starttime:"2014/4/27 19:40:22",sessiontime:""};
	public String save(@RequestBody CourseViewData	data){
		//float sessiontime = converttime(data.getSessiontime());
		//float totaltime = Float.parseFloat(data.getTotaltime()+sessiontime);
		//data.setSessiontime(""+ sessiontime);
		//data.setTotaltime(""+totaltime);
		courseViewManage.save(data);
		data.printdata();
		return ""; 
	}
	@RequestMapping("/viewcourse")
	public String view(){
		return "course/viewCourse";
	}
	@RequestMapping("/getcoursedata")
	@ResponseBody
	public CourseViewData get(){
		CourseViewData c = courseViewManage.get(0, 0);
		System.out.println(c);
		if(c == null)
		return new CourseViewData();
		return c;
	}
	public float converttime(String time){
		String t[] = time.split(":");
		float result = 0;
		for(String temp:t){
			result = result + Float.parseFloat(temp);
		}
		return result;
	}
}
