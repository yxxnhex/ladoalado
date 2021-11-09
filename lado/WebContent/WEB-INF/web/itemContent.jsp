<%@page import="kr.smhrd.model.ingredientVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    itemVO vo = (itemVO)request.getAttribute("vo");
    ingredientVO vo1 = (ingredientVO)request.getAttribute("vo1");
    itemVO vo2 = (itemVO)request.getAttribute("vo2");
    ingredientVO vo3 = (ingredientVO)request.getAttribute("vo3");
    String cpath=request.getContextPath(); // /m02

%>


<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>


<div>
<form action="<%=cpath%>/cartInsert.do" method="post">
		  <div>
		  <li> <span class="arrow_carrot-down"></span>
		  			<ul><input type="hidden" name="user_num" value="<%=vo.getItem_num()%>"></ul>
		  			<ul><input type="hidden" name="item_num" value="<%=vo.getItem_num()%>"></ul>
                    <ul><input type="text" name="cart_cnt"  placeholder="수량입력"></ul>
                    <ul><%=vo.getItem_name() %></ul>
                    <input type="submit" value="장바구니 담기" />
           			<input type="reset" value="취소" />
          </li>
		     
       
       
       
</body>
</html>


