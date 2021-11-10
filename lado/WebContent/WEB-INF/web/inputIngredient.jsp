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

	<form action="<%=cpath%>/ingredientUpload.do" method="post">
		칼로리 : <input type="number" name="item_kcal"><br>
		나트륨 : <input type="number" name="item_nate"><br>
		칼슘 : <input type="number" name="item_carbo"><br>
		당류 : <input type="number" name="item_sugar"><br>
		지방류 : <input type="number" name="item_fat"><br>
		트랜스지방 : <input type="number" name="item_trans"><br>
		포화지방 : <input type="number" name="item_sat"><br>
		콜레스테롤 : <input type="number" name="item_col"><br>
		단백질 : <input type="number" name="item_protein"><br>
		<input type="submit" value="상품등록">
	</form>
		

</body>
</html>