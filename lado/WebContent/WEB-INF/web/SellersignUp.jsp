<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
     String cpath=request.getContextPath(); // /m02

%>    
<!DOCTYPE html>
<html lang="en">
<head>


    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/member1.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/common.css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/barfiller.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/magnific-popup.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/elegant-icons.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/nice-select.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.min.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slicknav.min.css" type="text/css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css">

</head>
<body>

  <h2>판매자 회원가입</h2>
  <div>
    <div>
      <form action="<%=cpath%>/userInsert.do" method="post">
        <div>
          <label for="title">아이디:</label>
          <div>
            <input type="text" name="user_id"  placeholder="Enter id">
          </div>
        </div>
        <div>
          <label for="contents">비밀번호:</label>
          <div>
            <input type="password" name="user_pwd"  placeholder="Enter password">
          </div>
        </div>
        <div>
          <label for="writer">핸드폰번호:</label>
          <div>
            <input type="text" name="user_phone" placeholder="(-)없이 11자만 작성해주세요">
          </div>
        </div>
        <div>
          <div>
            <button type="submit" class="btn btn-primary btn-sm">회원가입</button>
            <button type="reset" class="btn btn-warning btn-sm">취소</button>
          </div>
        </div>
      </form>
    </div>
</div>




</body> 
</html>