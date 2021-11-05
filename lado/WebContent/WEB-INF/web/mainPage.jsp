<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
    String cpath=request.getContextPath(); // /m02
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header id="header">
        <div class="headbox">
            <nav class=""> <!--현재 페이지나 다른 페이지로의 링크를 보여주는 구획-->
                <div class="">
                    <h1 class="site_logo">
                        <a href="" class="">
                            <img src="" alt="">
                        </a>
                    </h1>
                    <div class="menu_list_wrap">
                        <button class="menu_list">
                            <span class="icon"></span>
                        </button>
                    </div>
                    <div class="menu_list_ihnner">
                        <div>
                            <img class="" src="">
                            <ul class="menu_list"></ul>
                                <li>
                                    <a href="<%=cpath%>/itemList.do">Menu</a>
                                </li>
                                <li>
                                    <a href="" onclick="">About Us</a>
                                </li>
                                <li>
                                    <a href="" onclick="">My Page</a>
                                </li>
                                <li>
                                    <a href="" onclick="">Cart</a>
                                </li>
                                <li>
                                    <a href="<%=cpath%>/signUp.do">회원가입</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="header-contents">
                <h2>
                    맛있는 밀키트
                    <br>
                    영양성분은 어떨까요?
                </h2>
                <p>
                    나와 우리가족을 위한 맞춤 밀키트,
                    <br>
                    지금 찾아보기!
                </p>
            </div>
            <main>
                <section></section>
            </main>
        </div>
    </header>
    <footer id="footer" class="">
        <address class="content">
            <h4>Lado a Lado</h4>
            <p>
                (주)라도어라도
                <em>|</em>
                <span>사업자번호 : 128-31-00321</span>
                <em>|</em>
                <span>대표 : 김라도</span>
            </p>
            <p>
                <span>광주광역시 남구 송암로60, CGI센터 201호</span>
            </p>
    </footer>
</body>
</html>