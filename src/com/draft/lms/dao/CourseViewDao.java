package com.draft.lms.dao;

import com.draft.lms.domain.CourseViewData;

public interface CourseViewDao {
	public CourseViewData get(int userid,int courseid);
	public boolean insert(CourseViewData courseViewData);
}
