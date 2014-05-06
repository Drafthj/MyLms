package com.draft.lms.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyDate {
	public static SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static String getDate(){
		return sd.format(new Date());
	}
}
