<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%
    String cpath=request.getContextPath(); // /m02  
    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
    
    
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=cpath%>/fileUpload" method="post" enctype="multipart/form-data" >
		파일 설명 : <input type="text" name="description"><br>
		파일1 : <input type="file" name="file1"><br>
		파일2 : <input type="file" name="file1"><br>
		<input type="submit" value="전송">
	
	
	</form>
		

</body>
</html>