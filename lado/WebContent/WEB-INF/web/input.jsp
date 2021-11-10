<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
    String cpath=request.getContextPath(); // /m02  
    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
    
    
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=cpath%>/fileUpload.do" method="post" enctype="multipart/form-data" >
		파일 설명 : <input type="text" name="description"><br>
		파일명 : <input type="text" name="file_name"><br>
		파일1 : <input type="file" name="file"><br>
		<input type="submit" value="전송">
	
	
	</form>
		

</body>
</html>