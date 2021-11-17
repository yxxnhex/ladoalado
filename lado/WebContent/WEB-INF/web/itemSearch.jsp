<%@page import="kr.smhrd.model.itemSortVO"%>
<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    // Object Cating(객체형변환-제일중요)
    ArrayList<itemVO> list=(ArrayList<itemVO>)request.getAttribute("list");
    ArrayList<itemVO> itemSearch_list=(ArrayList<itemVO>)request.getAttribute("itemSearch_list");
    ArrayList<itemSortVO> itemSort_list=(ArrayList<itemSortVO>)request.getAttribute("itemSort_list");

    String cpath=request.getContextPath(); // /m02    
    
    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
    
%>

    <script type="text/javascript">
  	function outFn(){
  		location.href="<%=cpath%>/logout.do"
  	}
  	
  	src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"
  </script>

<!-- Css Styles -->
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
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

출처: https://blog.canapio.com/46 [tucan9389's blog]

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
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

<!-- Shop Section Begin -->

<!-- search & category Section -->

<section class="shop spad">
    <div class="container">
        <div class="shop__option">
            <div class="row">
                <div class="col-lg-7 col-md-7">
                    <div class="shop__option__search">
                        <form method="post" action="<%=cpath%>/itemSearch.do">
                            <input type="text" name="item_search" placeholder="검색">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5">
                    <div class="shop__option__right">
                        <form method="post" action="<%=cpath%>/itemSort.do">
                        <select name="sort">
                            <option value="item_kcal">칼로리 높은순</option>
                            <option value="item_nate">나트륨 높은순</option>
                            <option value="item_protein">단백질 높은순</option>
                            <option value="item_price">가격 높은순</option>
                        </select>
                        <button type="submit">정렬하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        
<!-- itemList Section -->

		<div id="searchedItemDisplay" class="searched_item_display" data-displaytype="lattice">
			<ul class="horiaontal-list">
				<li class="horizonta-list-item">
					
				</li>
			</ul>
		</div>
		
        	<div class="row">
			<% for(itemVO vo : itemSearch_list){ %>
				<div class="col-lg-3 col-md-6 col-sm-6">
                	<div class="product__item">
                		<ul>
                			<li>
			                    	<div class="product__item__pic set-bg" >
			                    		<img src="<%=vo.getItem_imgurl()%>" style="height:262.5; width:262.5;">
            			        	</div>
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
                                                        
                            			
                            			<div class="product__item__price"><%=vo.getItem_price()%>원</div>
                            			
           							</div>
                			</li>
                		</ul>
                		</div>
                </div>
								
				<%   }  %>
                
            
        </div>
    </section>

<!-- Shop Section End -->

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


<!-- Js Plugins -->
<script src="js/jquery-3.6.0.min.js"></script>






</body>
</html>