<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="resources/js/jquery-2.02.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
var userid = 0;
var SectionID = "829";
var courseid = 0;
var taskid = '0';
var taskdetailid = '0';
var flag = '0';
var CurrentSectionID = "0";
var studydata = null;
var isCommit = true;
var runtime = 0;
var timespan = 60;
var timeInterval = null;
var exit = 0;
setRunTime = function() {
    runtime++; exit = 0;
    //每分钟请求一次服务器时间
    if (runtime % timespan == 0) {
        exit = 1;
        UpdateData();
    }
}
$(document).ready(function() {
    timeInterval = setInterval(setRunTime, 1000);
});
function API_Calls() {
    this.LMSInitialize = LMSInitialize;
    this.LMSSetValue = LMSSetValue;
    this.LMSGetValue = LMSGetValue;
    this.LMSCommit = LMSCommit;
    this.LMSFinish = LMSFinish;
    this.LMSGetLastError = LMSGetLastError;
    this.LMSGetErrorString = LMSGetErrorString;
}

var API = new API_Calls();

function LMSInitialize(value) {
    if(CurrentSectionID==0) CurrentSectionID = SectionID;
    dataInit();
    return true;
}
function LMSCommit() {
    UpdateData();
}
function LMSFinish() {
	LMSCommit();
    Clear();
    studydata = null;
    return true;
}
function Clear() {
    studydata = null;
   // $.post('/ajax/viewcourse.ashx', { 'active': 'clear','courseid':courseid });
    return true;
}
function UpdateData() {
    if (studydata == null) {
        studydata = { location: "", status: "no completed", score: "0", suspenddata: "" };
    }
    try {
    	//var mydata = '{ "active": "setvalue", "did":"'+ taskdetailid+'", "cid":" '+courseid+'", "sid": "'+CurrentSectionID+'", "tid": "'+taskid+'", "progress":"'+ studydata.progress+'", "location":" '+studydata.location+'", "status":"'+ studydata.status+'", "score": "'+studydata.score+'", "suspenddata":"'+ studydata.suspenddata+'","exit":"'+exit+'"}';
       	$.ajax({
       	 type : 'POST',  
         contentType : 'application/json',  
         url : 'savecoursedata',  
         dataType : 'json',  
         data : '{"userid":"'+userid+'","courseid":"'+courseid+'","sessiontime":"'+studydata.sessiontime+'","totaltime":"'+studydata.totaltime+'","location":"'+studydata.location+'","status":"'+studydata.status+'","score":"'+studydata.score+'","suspenddata":"'+studydata.suspenddata+'","progress":"'+studydata.progress+'"}'
       	});
        return true;
    }
    catch (ex) {
        return false;
    }
}
function LMSSetValue(name, value) {
    try {
        dataInit();
        switch (name) {
            case "cmi.core.lesson_location":
                studydata.location = value; 
                break;
            case "cmi.core.lesson_status":
                studydata.status = value;
               // UpdateData(); isCommit = false;
                break;
            case "cmi.core.session_time":
                studydata.sessiontime = value;
                break;
            case "cmi.core.lesson_mode":
                break;
            case "cmi.core.score.raw":
                studydata.score = value;
                //UpdateData(); isCommit = false;
                break;
            case "cmi.suspend_data":
                studydata.suspenddata = value;
                break;
            case "cmi.core.lesson_progress":
                studydata.progress = value;
               // UpdateData(); isCommit = false;
                break;
            default:
                break;
        }
        
        
    }
    catch (ex) {
    }
    return "";
}
function LMSGetValue(name) {
    try {
        dataInit();
        switch (name) {
            case "cmi.core.student_id":
                return "";
            case "cmi.core.student_name":
                return "";
            case "cmi.core.lesson_location":
                return studydata.location;
            case "cmi.core.lesson_status":
                {
                    if (studydata.status.length == 0) {
                        return "not attempted";
                    }
                    return studydata.status;
                }
            case "cmi.core.total_time":{
                return studydata.totaltime;
            }
            case "cmi.core.lesson_mode":
                studydata.mode = "";
                return "";
            case "cmi.core.score.raw":
                return studydata.score;
            case "cmi.core.lesson_progress":
                return studydata.progress; 
            case "cmi.suspend_data":
                return studydata.suspenddata;
            default:
                return "";
        }
    } catch (ex) { return ""; }
}
dataInit = function() {
if (studydata == null) {
        $.ajax({
            type: 'GET',
            url: 'getcoursedata',
            data: '',
            dataType: "json",
            async: false,
            success:function(data){
            	studydata=data;
            }
        });
    }
}
function LMSGetLastError(value) { return 0; }
function LMSGetErrorString(value) { return value; }
</script>
<body>
<iframe id="iframecourse" name="iframecourse" height="900px" scrolling="no"   frameborder="0"  marginheight="0" framespacing="0" marginwidth="0" width="100%" src="resources/scorm/index.html"></iframe>
</body>
</html>