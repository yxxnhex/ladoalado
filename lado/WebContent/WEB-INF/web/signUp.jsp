<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
     String cpath=request.getContextPath(); // /m02

%>    
<!DOCTYPE html>
<html lang="en">
<body>
 
<div>
  <h2>회원가입</h2>
  <div">
    <div>게시판 글쓰기</div>
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