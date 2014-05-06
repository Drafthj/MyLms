package com.draft.lms.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.draft.lms.daoImpl.CourseViewDaoImpl;
import com.draft.lms.domain.CourseViewData;

@Service
public class CourseViewManage {
	@Autowired
	private CourseViewDaoImpl courseViewDaoImpl;
	public boolean save(CourseViewData courseViewData){
		return courseViewDaoImpl.insert(courseViewData);
	}
	public CourseViewData get(int userid,int courseid){
		return courseViewDaoImpl.get(userid, courseid);
	}
}
