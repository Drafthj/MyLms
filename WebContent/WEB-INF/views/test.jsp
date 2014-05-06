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
$(document).ready(function(){
    var mydata = '{"name":"huojia","age":"1k"}';
    $.ajax({  
        type : 'POST',  
        contentType : 'application/json',  
        url : 'coursedatasave',  
        dataType : 'json',  
        data : mydata
    });  
});
</script>
<body>

</body>
</html>