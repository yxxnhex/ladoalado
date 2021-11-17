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
    
    ArrayList<itemVO> newItemList=(ArrayList<itemVO>)request.getAttribute("newItemList");
    ArrayList<itemVO> suggestList=(ArrayList<itemVO>)request.getAttribute("suggestList");

    
%>

    <script type="text/javascript">
  	function outFn(){
  		location.href="<%=cpath%>/logout.do"
  	}
  	
  	src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"
  </script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>mainPage</title>
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
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">    
    <script type="text/javascript">
     function outFn(){
        location.href="<%=cpath%>/logout.do"
     }
     
     src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"
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
                                    <li><a href="<%=cpath%>/SellersignUp.do">Join-Seller</a></li>
                                </ul>
                            </div>
                            <div class="header__logo">                                                              
                               <a href="<%=cpath%>/mainPage.do"><img src="img/logo.png" alt=""></a>                               
                            </div>
                            <div class="header__top__right">
                                <ul>                                                                
                                    <li>
                              <% if(user==null&seller==null){ %>
                                       <p>Please Login</p>
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
                            <li><a href="<%=cpath%>/mainPage.do">홈</a></li>
                            <li><a href="<%=cpath%>/aboutUs.do">라도이야기</a></li>
                            <li><a href="<%=cpath%>/itemList.do">메뉴</a></li>
                                    
                        <%if(user == null && seller==null){ %> 
                        <li><a href="<%=cpath%>/loginPage.do" class="loginout">로그인</a></li> 
                        <%}else if(user != null){ %>
                        <li>
                        <form action="<%=cpath%>/cartView.do" method="post">
                           <input type="hidden" name="user_num" value="<%=user.getUser_num()%>"> 
                           <input type="submit" id="seller_pd" value="장바구니" />
                        </form> 
                        </li>
                        <% }else if(seller != null){ %>
                        <li>
                        <form action="<%=cpath%>/input.do" method="post">
                           <input type="hidden" name="seller_num" value="<%=seller.getSeller_num()%>"> 
                           <input type="submit" id="seller_pd" value="상품등록" />
                        </form> 
                        </li>
                        <li>
                        <form action="<%=cpath%>/manageItem.do" method="post">
                           <input type="hidden" name="seller_num" value="<%=seller.getSeller_num()%>"> 
                           <input type="submit" id="seller_pd" value="상품관리" />
                        </form> 
                        </li>
                         <% } %>
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
              
                    </div>
                    <video class="video_area" muted autoplay loop>
                        <source src="img/video/dinner.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>        
    </section>
<!-- Hero Section End -->



  <div class="container">
       
        <div class="row" style="margin-right:-1200;">
            <div class="col-lg-6 col-md-6" >
                <div class="about__text">
                   <h1>　</h1>
                   <h1>　</h1>
                   <h4>　</h4>
               <img src="img/new.png" >
               <h3>　</h3>
                    <div class="section-title">
                      <div class="row">
         <% for(itemVO vo : newItemList){ %>
            <div class="col-lg-3 col-md-6 col-sm-6">
                   <div class="product__item">
                      <ul>
                         <li>
                         
                                <div class="product__item__pic set-bg" >
                                   <img src="<%=vo.getItem_imgurl()%>" style="width: 264.38px; height: 264.38px;">
                                </div>
                                <div class="product__item__price">[ <%=vo.getItem_company()%> ]</div>
                                <div class="product__item__text">                                                  
                                     <form method="post" action="<%=cpath%>/itemContent.do">
                                        <input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
                                        <%if(user!=null){ %>
                                        <input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
                                        <input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
                                            <%} %>
                                        <label id="menu_label" for="cb1" style="outline: 0;">
                                           <button id="cb1"><%=vo.getItem_name()%></button>
                                        </label>
                                     </form>
                                        
                                     <div class="product__item__price" id="price<%=vo.getItem_num()%>">
                              <script>
                              document.getElementById("price<%=vo.getItem_num()%>").innerHTML=(<%=vo.getItem_price()%>).toLocaleString();
                              </script>
                              원
                              </div>
                         </li>
                      </ul>
                      </div>
                </div>
                        
            <%   }  %>
        </div>
                      
                   
                    </div>
                  
                </div>

            </div>
           </div>  
             </div>
             
             
             
             
               <div class="container">
       
        <div class="row" style="margin-right:-1200;">
            <div class="col-lg-6 col-md-6" >
                <div class="about__text">
                   <h1>　</h1>
                   <h1>　</h1>
                   <h4>　</h4>
                   <div class="container">
               <img src="img/suggest.png" style="width: 1147px;">
               </div>
               <h3>　</h3>
                    <div class="section-title">
                      <div class="row">
         <% for(itemVO vo : suggestList){ %>
            <div class="col-lg-3 col-md-6 col-sm-6">
                   <div class="product__item">
                      <ul>
                         <li>
                                <div class="product__item__pic set-bg" >
                                   <img src="<%=vo.getItem_imgurl()%>" style="width: 264.38px; height: 264.38px;">
                                </div>
                                <div class="product__item__price">[ <%=vo.getItem_company()%> ]</div>
                                <div class="product__item__text">                                                  
                                     <form method="post" action="<%=cpath%>/itemContent.do">
                                        <input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
                                        <%if(user!=null){ %>
                                        <input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
                                        <input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
                                            <%} %>
                                        <label id="menu_label" for="cb1" style="outline: 0;">
                                           <button id="cb1"><%=vo.getItem_name()%></button>
                                        </label>
                                     </form>
                                        
                                     <div class="product__item__price" id="price<%=vo.getItem_num()%>">
                              <script>
                              document.getElementById("price<%=vo.getItem_num()%>").innerHTML=(<%=vo.getItem_price()%>).toLocaleString();
                              </script>
                              원
                              </div>
                         </li>
                      </ul>
                      </div>
                </div>
                        
            <%   }  %>
        </div>
                      
                   
                    </div>
                  
                </div>

            </div>
           </div>  
             </div>


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




</body></html>