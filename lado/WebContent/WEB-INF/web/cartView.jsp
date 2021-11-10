<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.cartViewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.smhrd.model.cartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    // Object Cating(객체형변환-제일중요)
    String cpath=request.getContextPath(); // /m02    
    ArrayList<cartViewVO> list=(ArrayList<cartViewVO>)request.getAttribute("list");

    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
    
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

	
<!-- Breadcrumb Begin -->
 <div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>장바구니</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
    
    
    
<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th>삼품명</th>
                                <th>수량</th>
                                <th>총액</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
								<% int total_price=0; %>
								<% if(list.size() == 0){ %>
								<tr>
									<td class="product__cart__item">
										<div class="product__cart__item__pic">
											<img src="img/shop/cart/cart-1.jpg" alt="">
										</div>
										<div class="product__cart__item__text">
											<h6>장바구니에 담긴 상품이 없습니다.</h6>
										</div>
									</td>
								</tr>
								<% } else { %>
								<% for(int i = 0; i < list.size(); i++) { %>
								<% cartViewVO vo = list.get(i); %>
								<% int sum_price=vo.getItem_price()*vo.getCart_cnt() ; %>
								<% total_price+=sum_price; %>
								<tr>
									<td class="product__cart__item">
										<div class="product__cart__item__pic">
											<img src="img/shop/cart/cart-1.jpg" alt="">
										</div>
										<div class="product__cart__item__text">
											<h6><%=vo.getItem_name() %></h6>
										</div>
									</td>
									<td class="quantity__item">
										<div class="quantity">
											<div class="pro-qty">
												<h6><%=vo.getItem_price() %></h6>
											</div>
										</div>
									</td>
									<td class="quantity__item">
										<div class="quantity">
											<div class="pro-qty">
												<h6><%=vo.getCart_cnt() %></h6>
											</div>
										</div>
									</td>
									<td class="cart__price"><%=sum_price%>원</td>
									<td class="cart__close"><span class="icon_close"></span></td>
								</tr>
								<% } %>
								<% } %>
						</tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="#"><i class="fa fa-spinner"></i> 더 둘러보기</a>
                        </div>
                        </div>                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="cart__total">
                        <h6>장바구니 총액</h6>
                        <ul>
                            <li>Total <span><%=total_price %>원</span></li>
						</ul>
					<a href="#" class="primary-btn">결제하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->



</body>
</html>