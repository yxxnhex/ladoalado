<%@page import="kr.smhrd.model.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    // Object Cating(객체형변환-제일중요)
    ArrayList<boardVO> list=(ArrayList<boardVO>)request.getAttribute("list");
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
	<% for(boardVO vo : list){ %>
                
                 <img src=<%=vo.getFile_path() %>> 
                
                 <%   }  %>
</body>
</html>