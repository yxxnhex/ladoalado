<%@page import="kr.smhrd.model.kcal_calVO"%>
<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.ingredientVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	itemVO vo = (itemVO) request.getAttribute("vo");
	ingredientVO vo1 = (ingredientVO) request.getAttribute("vo1");
	itemVO vo2 = (itemVO) request.getAttribute("vo2");
	ingredientVO vo3 = (ingredientVO) request.getAttribute("vo3");
	itemVO vo4 = (itemVO) request.getAttribute("vo4");
	itemVO vo6 = (itemVO) request.getAttribute("vo6");
	
	kcal_calVO kcal_cal_vo= (kcal_calVO) request.getAttribute("kcal_cal_vo");
	
	
	String cpath = request.getContextPath(); // /m02
	
	UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
	
    
    int item1_serve=vo.getItem_serve();
    int item1_kcal=vo1.getItem_kcal();
    int kcal_cal=kcal_cal_vo.getKcal();
    int hundred=100;
    int item1_kcal_cal=(item1_kcal/item1_serve)*hundred/kcal_cal;
    
    
    
    
%>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
<link 
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">

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

<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<!-- Page Preloder -->
    <div id="preloder" style="display: none;">
        <div class="loader" style="display: none;"></div>
    </div>

<div>
		     
       
       
       
    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__cart">
            <div class="offcanvas__cart__links">
                <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                <a href="#"><img src="img/icon/heart.png" alt=""></a>
            </div>
            <div class="offcanvas__cart__item">
                <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                <div class="cart__price">Cart: <span>$0.00</span></div>
            </div>
        </div>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: none;"><span class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                        <ul>
                            <li><a href="./index.html" role="menuitem">Home</a></li>
                            <li><a href="./about.html" role="menuitem">About</a></li>
                            <li class="active"><a href="./shop.html" role="menuitem">Shop</a></li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: none;"><a href="#">Pages</a>
                                <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                    <li><a href="./shop-details.html" role="menuitem" tabindex="-1">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html" role="menuitem" tabindex="-1">Shoping Cart</a></li>
                                    <li><a href="./checkout.html" role="menuitem" tabindex="-1">Check Out</a></li>
                                    <li><a href="./wisslist.html" role="menuitem" tabindex="-1">Wisslist</a></li>
                                    <li><a href="./Class.html" role="menuitem" tabindex="-1">Class</a></li>
                                    <li><a href="./blog-details.html" role="menuitem" tabindex="-1">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html" role="menuitem">Blog</a></li>
                            <li><a href="./contact.html" role="menuitem">Contact</a></li>
                        </ul>
                    </nav></div></div>
    </div>
 <!-- Offcanvas Menu End -->

 <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <ul>                                                                  
                                    <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
                                    <li><a href="#">Seller</a> <span class="arrow_carrot-down"></span></li>

                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
                            </div>
                            <div class="header__top__right">
                                <div class="header__top__right__links">
                                    <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                                    <a href="#"><img src="img/icon/heart.png" alt=""></a>
                                </div>
                                <div class="header__top__right__cart">
                                    <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                                    <div class="cart__price">Cart: <span>$0.00</span></div>
                                </div>
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
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./about.html">About</a></li>
                            <li><a href="#">Menu</a>
                                <ul class="dropdown">
                                    <li><a href="./shop-details.html">Details</a></li>
                                    <li><a href="./shoping-cart.html">Cart</a></li>
                                    <li><a href="./wisslist.html">Wisslist</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="./shop.html">Login</a></li>                            
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
	<!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>상품 상세 정보</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

<!-- Shop Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <img class="big_img" src="img/shop/details/product-big-1.jpg" alt="">
                        </div>
                        <div class="product__details__thumb" tabindex="1" style="overflow: hidden; outline: none;">
                            <div class="pt__item active">
                                
                            </div>
                            <div class="pt__item">
                                
                            </div>
                            <div class="pt__item">
                                
                            </div>
                            <div class="pt__item">
                                
		  <div>
                                <form action="<%=cpath%>/cartInsert.do" method="post">
		   <span class="arrow_carrot-down"></span>
		  			<input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
		  			<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
					
					
					
					
					
					
					<!--  테스트 -->		  			
		  			<h2><%=kcal_cal_vo.getKcal() %></h2>
		  			<!--  테스트 -->		
		  			
		  			
		  			
		  			
		  			
		  			
		  			<h2><%=vo.getItem_name() %></h2>
		  			<h2><%=vo.getItem_price() %></h2>
                    <input type="text" name="cart_cnt"  placeholder="수량입력">
                    <input type="submit" value="장바구니 담기" />
           			<input type="reset" value="취소" />
           			</form>
          </li>
                                
                                
                            </div>
                            <div class="pt__item">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <div class="product__label">Cupcake</div>
                        <div class="product__item__price">
                        	<h5><%=vo.getItem_price()%>원</h5>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, eiusmod tempor incididunt ut labore
                        et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida</p>
                        <ul>
                            <li><span></span></li>
                            <li>Category: <span>Biscuit cake</span></li>
                            <li>Tags: <span>Gadgets, minimalisstic</span></li>
                        </ul>
                        <div class="product__details__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <span class="dec qtybtn">-</span>
                                    <input type="text" value="2">
                                    <span class="inc qtybtn">+</span>
                                </div>
                            </div>
                            <a href="#" class="primary-btn">Add to cart</a>
                            <a href="#" class="heart__btn"><span class="icon_heart_alt"></span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product__details__tab">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">상세정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab" aria-selected="false">영양소정보
</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab" aria-selected="false">리뷰</a>
                        </li>
                    </ul>
                    <div class="product_graph">
                        <div class="graph">
                        	<div class="row">
             					<div class="col-lg-12 text-center">
                    		<div class="section-title">
                        		<h3>영양성분 그래프</h3>
                    		</div>
                		</div>
            		</div>
                   	<canvas id="test1"></canvas> 
						<script> 
							var ctx = document.getElementById('test1').getContext('2d'); 
							var label
							var chart = new Chart(ctx, { 
							type: 'bar',  
							data: { 
								labels: ['열량(%)', '나트륨(%)', '탄수화물(%)', '당류(%)', '지방(%)', '트랜스지방(mg)', '포화지방(%)', '콜레스테롤(%)', '단백질(%)'], 
								datasets: [{  
									label: '<%=vo.getItem_name()%>',
									backgroundColor: 'rgba(255, 99, 132, 0.5)', 
										borderColor: 'rgb(255, 99, 132,1.5)', 
											data: [ <%=vo1.getItem_kcal()/vo.getItem_serve()*100/kcal_cal_vo.getKcal()%> , <%=vo1.getItem_nate()/vo.getItem_serve()%>, 
											<%=vo1.getItem_carbo()/vo.getItem_serve()%>, <%=vo1.getItem_sugar()/vo.getItem_serve()%>, 
											<%=vo1.getItem_fat()/vo.getItem_serve()%>, <%=vo1.getItem_trans()/vo.getItem_serve()%>, 
											<%=vo1.getItem_sat()/vo.getItem_serve()%>, <%=vo1.getItem_col()/vo.getItem_serve()%>, <%=vo1.getItem_protein()/vo.getItem_serve()%>] 
								},
								{label: '<%=vo2.getItem_name()%>',
								backgroundColor: '#F7464A', 
									borderColor: '#F7464A', 
										data: [<%=vo3.getItem_kcal()/vo2.getItem_serve()*100/kcal_cal_vo.getKcal()%> , <%=vo3.getItem_nate()/vo.getItem_serve()%>, 
										<%=vo3.getItem_carbo()/vo.getItem_serve()%>, <%=vo3.getItem_sugar()/vo.getItem_serve()%>, 
										<%=vo3.getItem_fat()/vo.getItem_serve()%>, <%=vo3.getItem_trans()/vo.getItem_serve()%>, 
										<%=vo3.getItem_sat()/vo.getItem_serve()%>, <%=vo3.getItem_col()/vo.getItem_serve()%>, <%=vo3.getItem_protein()/vo.getItem_serve()%>]}
								] }, 
								options: { 
									title: { 
										display: false, 
										text: '��', 
										fontSize: 30, 
										fontColor: 'rgba(46, 49, 49, 1)' 
										}, 
										legend: { 
											labels: { 
												fontColor: 'rgba(83, 51, 237, 1)', 
												fontSize: 15 
												} 
										}, 
										scales: { 
											xAxes: [{ 
												ticks: { 
												fontColor: 'rgba(27, 163, 156, 1)', 
													fontSize: '15' 
													} 
											}], 
											yAxes: [{ 
												ticks: { 
													beginAtZero: true, 
													fontColor: 'rgba(246, 36, 89, 1)', 
													fontSize: '15' 
													}
											}] 
										} 
										} 
								}); 
							</script>                         
                            <p>영양소 관련 텍스트 영역</p>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->

     <!-- Related Products Section Begin -->
    <section class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>비슷한 상품 둘러보기</h2>
                    </div>
                </div>
                <div class="col-lg-5 text-center">
					<div class="product_spec">
						<a href="<%=cpath%>/itemContent.do?item_num=<%=vo2.getItem_num()%>"><h3><%=vo2.getItem_name()%></h3></a>
						<h4><%=vo2.getItem_price()%>원</h4>
						<h6><%=vo2.getItem_company()%></h6>
					</div>
					<div class="product_spec">
						<a href="<%=cpath%>/itemContent.do?item_num=<%=vo4.getItem_num()%>"><h3><%=vo4.getItem_name()%></h3></a>
						<h4><%=vo4.getItem_price()%>원</h4>
						<h6><%=vo4.getItem_company()%></h6>
					</div>
					<div class="product_spec">
						<a href="<%=cpath%>/itemContent.do?item_num=<%=vo6.getItem_num()%>"><h3><%=vo6.getItem_name()%></h3></a>
						<h4><%=vo6.getItem_price()%>원</h4>
						<h6><%=vo6.getItem_company()%></h6>
					</div>
                </div>
            </div>
    	</div>
    </section>
    <!-- Related Products Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="img/footer-bg.jpg" style="background-image: url(&quot;img/footer-bg.jpg&quot;);">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>WORKING HOURS</h6>
                        <ul>
                            <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                            <li>Saturday: 10:00 am – 16:30 pm</li>
                            <li>Sunday: 10:00 am – 16:30 pm</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>

                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>Subscribe</h6>
                        <p>Get latest updates and offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send-o"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright ©<script>document.write(new Date().getFullYear());</script>2021 All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                      </p>
                  </div>
                  <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script><div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 6px; z-index: auto; cursor: default; position: absolute; top: 373.73px; left: 753.356px; height: 440px; opacity: 0; display: none;"><div class="nicescroll-cursors" style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgba(0, 0, 0, 0.5); background-clip: padding-box; border-radius: 5px;"></div></div><div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 6px; z-index: auto; top: 807.73px; left: 648.965px; position: absolute; cursor: default; display: none; width: 104px; opacity: 0;"><div class="nicescroll-cursors" style="position: absolute; top: 0px; height: 6px; width: 0px; background-color: rgba(0, 0, 0, 0.5); background-clip: padding-box; border-radius: 5px; left: 0px;"></div></div>
<!-- Code injected by live-server -->
    
	
                  
	

</body>
</html>
