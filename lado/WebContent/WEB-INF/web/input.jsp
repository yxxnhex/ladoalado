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
		밀키트 상품명 : <input type="text" name="item_name"><br>
		제조사 : <input type="text" name="item_company"><br>
		가격 : <input type="number" name="item_price"><br>
		인분 : <input type="number" name="item_serve"><br>
		제조시간 : <input type="number" name="item_time"><br>
		무게 : <input type="number" name="item_gram"><br>
		파일1 : <input type="file" name="file"><br>
		<input type="submit" value="상품등록">
		<input type="hidden" name="seller_num" value="<%=seller.getSeller_num()%>">
		
	
	</form>
		

</body>
</html>