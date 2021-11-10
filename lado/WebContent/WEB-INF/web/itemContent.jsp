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
                            
                        </div>
                        <div class="pt__item">
                            
                        </div>
                    </div>
                </div>
            </div>
            
            
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
            
            
			<div class="col-lg-6">
                <div class="product__details__text">
                    <h4><a href="<%=cpath%>/itemContent.do?item_num=<%=vo.getItem_num()%>"><%=vo.getItem_name()%></a></h4>
                    <h5><%=vo.getItem_price()%>원</h5>
                    <p>DB table 입력 고민중</p>
                    
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
                        <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">영양소 정보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab" aria-selected="false">상세 정보</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <div class="product_graph">
                                    <div class="graph">                                        
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
                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 text-center">
                                        <div class="section-title">
                                            <h4>라도가 비슷한 상품을 골라봤어요</h4>
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
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-2" role="tabpanel">
                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <img src="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Details Section End -->
            
            
            
!-- Footer Section Begin -->
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
	
               
	

</body>
</html>
