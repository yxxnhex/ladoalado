<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
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
<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">


        <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/style1.css" type="text/css">
    <link rel="stylesheet" href="css/common.css" type="text/css">
    <link rel="stylesheet" href="css/member1.css" type="text/css">
    <script type="text/javascript">
  	function outFn(){
  		location.href="<%=cpath%>/logout.do"
  	}
  </script>
</head>

<body>


<!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <ul>                                                                  
                                    <li><a href="<%=cpath%>/signUp.do">Join</a></li>
                                    <li><a href="<%=cpath%>/loginPage.do">Login</a></li>

                                </ul>
                            </div>
                            <div class="header__logo">                                                              
                                    <a href="./index.html"><img src="img/logo.png" alt=""></a>                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="<%=cpath%>/mainPage.do">Home</a></li>
                            <li><a href="<%=cpath%>/">About Us</a></li>
                            <li><a href="<%=cpath%>/itemList.do">Menu</a></li>
                            <li><%if(user == null){ %>
                        <a href="<%=cpath%>/signUp.do">회원가입</a>
                        <%}else{ %>
                        <form action="<%=cpath%>/cartView.do" method="post">
                        <input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
                        <input type="submit" value="Cart" />
                       </form>
                        <%} %>
                        </li>
                            <li><a href="<%=cpath%>/input.do">판매상품등록</a></li>
							<li>
                            <% if(user==null&seller==null){ %>
                            <a href="<%=cpath%>/loginPage.do" class="loginout">Login</a>                             
                            <% } else{ %>
                            <% if(user!=null){ %>
                            <%= user.getUser_name() %>님 방문을 환영합니다.
                            <a class="loginout" onclick="outFn()">Logout</a>
                            <% }else if(seller!=null){ %>
                            <%= seller.getSeller_id() %>님 방문을 환영합니다.
                            <a class="loginout" onclick="outFn()">Logout</a>
                            <% }
                            }%>
                            </li>                             
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
<!-- Header Section End -->



 <!-- Hero Section Begin -->
    <section class="hero">          
        <div class="owl-stage-outer">
            <div class="owl-stage">
                <div class="index_video">
                    <div class="hero__text">
                        <h1>라도와 맛있는 저녁 고르기</h1>
                    </div>
                    <video class="video_area" muted autoplay loop>
                        <source src="/img/video/video.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>        
    </section>
<!-- Hero Section End -->


    
<!-- Footer Section Begin -->
    <footer class="footer set-bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>If you want to know <br>more about our company and products, please check the SNS below.</p>
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->



</body></html>