package com.draft.lms.domain;

import java.io.Serializable;

public class CourseViewData implements Serializable{
	private int  userid;
	private int courseid;
	private String sessiontime;
	private String totaltime;
	private String location;
	private String status;
	private int score;
	private String suspenddata;
	private String progress;
	public CourseViewData(){
		this.userid = 0;
		this.courseid = 0;
		this.sessiontime="0";
		this.totaltime = "0";
		this.location = "";
		this.status = "";
		this.score = 0;
		this.suspenddata = "";
		this.progress = "0";
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getSessiontime() {
		return sessiontime;
	}

	public void setSessiontime(String sessiontime) {
		this.sessiontime = sessiontime;
	}

	public String getTotaltime() {
		return totaltime;
	}

	public void setTotaltime(String totaltime) {
		this.totaltime = totaltime;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getSuspenddata() {
		return suspenddata;
	}

	public void setSuspenddata(String suspenddata) {
		this.suspenddata = suspenddata;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		final int prime = 31;
        int result = 1;
        result = prime * result + userid;
        result = prime * result + courseid;
        return result;
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if(obj.getClass()!=getClass())
			return false;
		CourseViewData other = (CourseViewData) obj;
		if(getCourseid() == other.getCourseid()&&getUserid() == other.getUserid())
			return true;
		return false;
	}

	public void printdata(){
		System.out.println("userid:"+userid+" courseid:"+courseid+" sessiontime:"+sessiontime+" totaltime:"+totaltime+" location:"+location+" status:"+status+" score:"+score+" suspendata:"+suspenddata+" progress:"+progress);
	}
}
