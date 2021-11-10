<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    // Object Cating(객체형변환-제일중요)
    ArrayList<itemVO> list=(ArrayList<itemVO>)request.getAttribute("list");
    String cpath=request.getContextPath(); // /m02  
    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
    
    
%>

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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                            <li><a href="<%=cpath%>/cartView.do">Cart</a></li>
                            <li><a href="<%=cpath%>/seller.html">Seller</a></li>                          

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
                        <form action="#">
                            <select>
                                <option value="">전체메뉴</option>
                                <option value="">한식</option>
                                <option value="">중식</option>
                                <option value="">일식</option>
                                <option value="">양식</option>
                            </select>
                            <input type="text" placeholder="검색">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5">
                    <div class="shop__option__right">
                        <select>
                            <option value="">정렬</option>
                            <option value="">이름순</option>
                            <option value="">가격순</option>
                            <option value="">추천순</option>
                        </select>
                        <a href="#"><i class="fa fa-list"></i></a>
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
			<% for(itemVO vo : list){ %>
				<div class="col-lg-3 col-md-6 col-sm-6">
                	<div class="product__item">
                		<ul>
                			<li>
			                    	<div class="product__item__pic set-bg" >
			                    		<img src="<%=vo.getItem_imgurl()%>">
            			        	</div>
                    				<div class="product__item__text">                    	                           
                            			<form method="post" action="<%=cpath%>/itemContent.do">
                            				<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
                         	                <input type="submit" value="<%=vo.getItem_num()%>" >
                            			</form>
                                                        
                            			<div class="product__item__price"><%=vo.getItem_name()%></div>
                            			<div class="product__item__price"><%=vo.getItem_price()%>원</div>
                            			<div class="cart_add">
                                			<a href="<%=cpath%>/cartInsert.do">담기</a>
           								</div>
           							</div>
                			</li>
                		</ul>
                		</div>
                </div>
								
				<%   }  %>
                
            <div class="shop__last__option">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="shop__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><span class="arrow_carrot-right"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="img/shop/product-1.jpg">
                    </div>
                    <div class="product__item__text">
                        <h6><a href="./detail.html">상품명 받아오기</a></h6>
                        <div class="product__item__price">가격 받아오기</div>
                        <div class="cart_add">
                            <a href="#">담기</a>
                        </div>
                    </div>
                    
					<script type="text/javascript">
						let data = [];
		
						<% for(int i = 0 ; i < 5; i++){ %>
						data.push({
							imgUrl : '<%=list.get(i).getItem_imgurl()%>'
						})
						console.log(data);
						<%   }  %>
		
		</script>                			
                    
                </div>
            </div>
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
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>



</body>
</html>