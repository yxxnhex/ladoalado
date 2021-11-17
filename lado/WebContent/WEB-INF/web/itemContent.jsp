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
itemVO vo4 = (itemVO) request.getAttribute("vo4");
itemVO vo6 = (itemVO) request.getAttribute("vo6");
itemVO voItem = (itemVO) request.getAttribute("voItem");
ingredientVO voIng = (ingredientVO) request.getAttribute("voIng");

kcal_calVO kcal_cal_vo = (kcal_calVO) request.getAttribute("kcal_cal_vo");

String cpath = request.getContextPath(); // /m02

UserVO user = (UserVO) session.getAttribute("succ");
sellerVO seller = (sellerVO) session.getAttribute("succ2");
if(user!=null){
	int item1_serve = vo.getItem_serve();
	int item1_kcal = vo1.getItem_kcal();
	int kcal_cal = kcal_cal_vo.getKcal();
	int hundred = 100;
	int item1_kcal_cal = (item1_kcal / item1_serve) * hundred / kcal_cal;
}
%>

    <script type="text/javascript">
  	function outFn(){
  		location.href="<%=cpath%>/logout.do"
  	}
  	
  	
  	function need_to_login(){
  		alert("로그인이 필요합니다.")
  		location.href="<%=cpath%>/loginPage.do"
  	}
  	
  	src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"
  </script>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">

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

		<!-- Breadcrumb Begin -->
		<div class="breadcrumb-option">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="breadcrumb__text2">
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
								<img src="<%=vo.getItem_imgurl()%>"  style="height:446.19; width:446.19;">
							</div>
							<div class="product__details__thumb" tabindex="1" style="overflow: hidden; outline: none;">
								<div class="pt__item active"></div>
								<div class="pt__item"></div>
								<div class="pt__item"></div>
								<div class="pt__item"></div>
								<div class="pt__item"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product__details__text">
							<h2>　</h2>
							<h2>[<%=vo.getItem_company()%>] <%=vo.getItem_name()%></h2>							
							<h4><%=vo.getItem_serve()%>인분 (<%=vo.getItem_gram()%>g)</h4>
							<h4 id="price1"><script>document.getElementById("price1").innerHTML=(<%=vo.getItem_price()%>).toLocaleString();</script>원</h4>
							<hr>

						</div>
						<div class="product__details__option">
							<div class="quantity">
								<form action="<%=cpath%>/cartInsert.do" method="post">
									<%if(user!=null){ %>
									<input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
									<input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
									<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
									<%} %>
	                                <div class="pro-qty">
										<input type="number" name="cart_cnt" placeholder="수량입력" onkeyup='printNum()' style="width: 500px;" required>
										<h2>　</h2>
									</div>
									<%if(user!=null){ %>
									<input class="btn_a" type="submit" value="장바구니 담기" />
									<%}else{ %>
									<input class="btn_a" type="button" value="장바구니 담기" onclick="need_to_login()"/>
									<%} %>
									</form>
									<form action="<%=cpath%>/itemList.do" method="post">
									<input class="btn_a" type="submit" value="더 둘러보기" />
									</form>	
								
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="product__details__tab">
				<div class="col-lg-12">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active">영양소 정보 및 상세 정보</a>
				
						</li>
					</ul>					
				</div>
			</div>
			
			<div class="tab-content">
                    <div class="tab-pane active" id="test-1" role="tabpanel">
                    	                    	<div style="text-align: center;">
                        <%if(user!=null){ %>
                    		<h2>　</h2>
                    		<h2>일일 권장 영양소 분석</h2>
                    		<h5>　</h5>
                    		<h5>
                    			<%= user.getUser_name() %>님의 나이와 성별에 따른 일일 권장량을<br>
                    			비율로 계산해 보여드리는 그래프 입니다.
                    		</h5>
                    	</div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-lg-8">
                                <div class="product_graph" style="margin-left:17% inline:block; margin-left: 12%">
                                    <div class="graph"> 
                                    	<h1>　</h1>
										<canvas id="test1"></canvas>
									  <script>
									 
		                                 var ctx = document.getElementById('test1').getContext('2d'); 
		                                 var label
		                                 var chart = new Chart(ctx, { 
		                                 type: 'bar',  
		                                 data: { 
		                                    labels: ['열량(%)', '나트륨(%)', '탄수화물(%)', '당류(%)', '지방(%)', '포화지방(%)', '콜레스테롤(%)', '단백질(%)'], 
		                                    datasets: [{  
		                                       label: '<%=vo.getItem_name()%>',
		                                       backgroundColor: '#639DF0', 
		                                          borderColor: '#639DF0', 
		                                          Color: '#424447',
		                                             data: [ <%=vo1.getItem_kcal()/vo.getItem_serve()*100/kcal_cal_vo.getKcal()%> , <%=vo1.getItem_nate()/vo.getItem_serve()%>, 
		                                             <%=vo1.getItem_carbo()/vo.getItem_serve()%>, <%=vo1.getItem_sugar()/vo.getItem_serve()%>, 
		                                             <%=vo1.getItem_fat()/vo.getItem_serve()%>, <%=vo1.getItem_sat()/vo.getItem_serve()%>, 
		                                             <%=vo1.getItem_col()/vo.getItem_serve()%>, <%=vo1.getItem_protein()/vo.getItem_serve()%>] 
		                                    },
		                                    {label: '<%=voItem.getItem_name()%>',
		                                    backgroundColor: '#C963F0', 
		                                       borderColor: '#C963F0', 
		                                          data: [<%=voIng.getItem_kcal()/voItem.getItem_serve()*100/kcal_cal_vo.getKcal()%> , <%=voIng.getItem_nate()/vo.getItem_serve()%>, 
		                                          <%=voIng.getItem_carbo()/vo.getItem_serve()%>, <%=voIng.getItem_sugar()/vo.getItem_serve()%>, 
		                                          <%=voIng.getItem_fat()/vo.getItem_serve()%>, <%=voIng.getItem_sat()/vo.getItem_serve()%>, 
		                                          <%=voIng.getItem_col()/vo.getItem_serve()%>, <%=voIng.getItem_protein()/vo.getItem_serve()%>]}
		                                    ] }, 
		                                    options: { 
		                                       title: { 
		                                          display: false, 
		                                          text: '  ', 
		                                          fontSize: 30, 
		                                          fontColor: '#424447' 
		                                          }, 
		                                          legend: { 
		                                             labels: { 
		                                                fontColor: '#424447', 
		                                                fontSize: 15 
		                                                } 
		                                          }, 
		                                          scales: { 
		                                             xAxes: [{ 
		                                                ticks: { 
		                                                fontColor: '#424447', 
		                                                   fontSize: '15' 
		                                                   } 
		                                             }], 
		                                             yAxes: [{ 
		                                                ticks: { 
		                                                   beginAtZero: true, 
		                                                   fontColor: '#424447', 
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
						<%}else{ %>
						<a href="<%=cpath%>/loginPage.do">
							<img class=img_set src="img/미로그인화면.jpg">
						</a>
						<%} %>
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h1>　</h1>
							<h3>라도가 메뉴를 추천드릴게요</h3>
						</div>
						<div id="searchedItemDisplay" class="searched_item_display" data-displaytype="lattice">
						<div class="class="col-lg-3 col-md-6 col-sm-6">
							<div id="suggest_section">
								<table class="suggest_section" style="border-spacing: 320px;">
								
											<tr>
											<%if(user!=null){ %>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="compare" value="1">
														<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
														<input type="hidden" name="item_num2" value="<%=vo2.getItem_num()%>">
														<input type="hidden" name="item_num3" value="<%=vo4.getItem_num()%>">
														<input type="hidden" name="item_num4" value="<%=vo6.getItem_num()%>">
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<label class="img_button">
															<button>영양소 비교하기</button>
														</label>
													</form>
												</td>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="compare" value="2">
														<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
														<input type="hidden" name="item_num2" value="<%=vo2.getItem_num()%>">
														<input type="hidden" name="item_num3" value="<%=vo4.getItem_num()%>">
														<input type="hidden" name="item_num4" value="<%=vo6.getItem_num()%>">
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<label class="img_button">
															<button>영양소 비교하기</button>
														</label>
													</form>
												</td>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="compare" value="3">
														<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
														<input type="hidden" name="item_num2" value="<%=vo2.getItem_num()%>">
														<input type="hidden" name="item_num3" value="<%=vo4.getItem_num()%>">
														<input type="hidden" name="item_num4" value="<%=vo6.getItem_num()%>">
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<label class="img_button">
															<button>영양소 비교하기</button>
														</label>
													</form>
												</td>
											</tr>
											<%} %>

											<tr style="width: 500px;">
												<td><img src="<%=vo2.getItem_imgurl()%>" style="width: 300px; height: 300px;"></td>
												<td><img src="<%=vo4.getItem_imgurl()%>" style="width: 300px; height: 300px;"></td>
												<td><img src="<%=vo6.getItem_imgurl()%>" style="width: 300px; height: 300px;"></td>
											</tr>
											
											
											<tr class="ab_1">
												<td><h6>[ <%=vo2.getItem_company()%> ]</h6></td>
												<td><h6>[ <%=vo4.getItem_company()%> ]</h6></td>
												<td><h6>[ <%=vo6.getItem_company()%> ]</h6></td>
											</tr>


											<tr>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="item_num" value="<%=vo2.getItem_num()%>">
														<%if (user != null) {%>
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<%}%>
														<label id="menu_label" for="cb1" style="outline: 0;">
															<button id="cb1"><%=vo2.getItem_name()%></button>
														</label>
													</form>
												</td>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="item_num" value="<%=vo4.getItem_num()%>">
														<%if (user != null) {%>
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<%}%>
														<label id="menu_label" for="cb1" style="outline: 0;">
															<button id="cb1"><%=vo4.getItem_name()%></button>
														</label>
													</form>
												</td>
												<td>
													<form method="post" action="<%=cpath%>/itemContent.do">
														<input type="hidden" name="item_num" value="<%=vo6.getItem_num()%>">
														<%if (user != null) {%>
														<input type="hidden" name="user_age" value="<%=user.getUser_age()%>">
														<input type="hidden" name="user_gender" value="<%=user.getUser_gender()%>">
														<%}%>
														<label id="menu_label" for="cb1" style="outline: 0;">
															<button id="cb1"><%=vo6.getItem_name()%></button>
														</label>
													</form>
												</td>
											</tr>
											
											

											<tr class="ab_1">
												<td><h5 id="price2"><script>document.getElementById("price2").innerHTML=(<%=vo2.getItem_price()%>).toLocaleString();</script>원</h5></td>
												<td><h5 id="price3"><script>document.getElementById("price3").innerHTML=(<%=vo4.getItem_price()%>).toLocaleString();</script>원</h5></td>
												<td><h5 id="price4"><script>document.getElementById("price4").innerHTML=(<%=vo6.getItem_price()%>).toLocaleString();</script>원</h5></td>
											</tr>


										</table>
							</div>
						</div>
						</div>								
					</div>
					<h1>　</h1>
				</div>
			</div>
		</section>
		<!-- Shop Details Section End -->



		<!-- Footer Section Begin -->
		<footer class="footer set-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-6"></div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="footer__about">
							<div class="footer__logo">
								<a href="#"><img src="img/footer-logo.png" alt=""></a>
							</div>
							<p>
								If you want to know <br>more about our company and
								products, please check the SNS below.
							</p>
							<div class="footer__social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	<!-- Footer Section End -->




</body>
</html>
