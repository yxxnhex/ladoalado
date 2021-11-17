<%@page import="kr.smhrd.model.itemVO"%>
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
   itemVO vo2 = (itemVO) request.getAttribute("vo2");

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
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

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


   
<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
   <div class="container">
      <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="breadcrumb__text2">
                   <h2>장바구니</h2>
                   <h2>　</h2>
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
                    <table id="shop_cart_fuck">
                        <thead>
                            <tr>                               
                                <th style="text-align:left; colspan: 2;">상품명</th>
                                <th style="text-align:left;">　　 가격</th>
                                <th style="text-align:left;">　　수량</th>
                                <th style="text-align:left;">　총액</th>
                                <th style="text-align:center;">삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                        <% int total_price=0; %>
                        <% if(list.size() == 0){ %>
                        <tr>
                           <td colspan="6" class="product__cart__item" >
                              <div class="product__cart__item__text">
                                 <h6 style="text-align:center;padding-right:5;">장바구니에 담긴 상품이 없습니다.</h6>
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
                                 <img src="<%=vo.getItem_imgurl()%>" style="width: 100px; height: 100px">
                              </div>
                              <div class="product__cart__item__text" style="padding-top: 50px; padding-bottom: 20px;">
                                 <h6><%=vo.getItem_name() %></h6>
                              </div>
                           </td>
                           <td class="quantity__item">
                              <div class="quantity">
                                 <div class="pro-qty">
                                    <h6><%=vo.getItem_price() %>원</h6>
                                 </div>
                              </div>
                           </td>
                           <td class="quantity__item">
                              <div class="quantity">
                                 <div class="pro-qty">
                                    <h6><%=vo.getCart_cnt() %>개</h6>
                                 </div>
                              </div>
                           </td>
                           <td class="cart__price" style="text-align:left;"><%=sum_price%>원</td>
                           <td class="cart__close">
                           	<form method="post" action="<%=cpath %>/cartDelete.do">
                           	<input type="hidden" name="item_num" value="<%=vo.getItem_num()%>">
                           	<input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
                            <button class="fas fa-times-circle" style="border:0;"></button>
                            </form>
                           </td>
                        </tr>
                        <% } %>
                        <% } %>
                  </tbody>
                    </table>
                </div>
</div>
                <div style="margin-left: 700px">
                    <div class="cart__total" style="width: 500px;">
                        <h6>장바구니 총액</h6>
                        <h5>　</h5>
                        <ul>
                            <li>Total <span><%=total_price %>원</span></li>
                  </ul>
               <div class="luv_suri">
               
               
    
                        <% if(list.size() == 0){ %>
                        
                        <% } else { %>
                  			<form method="post" action="<%=cpath %>/pay.do">
                           	<input type="hidden" name="user_num" value="<%=user.getUser_num()%>">
                            <button class="fuck_btn" onclick="pay()">결제하기</button>
                            </form>
                        <% } %>
                        	<form method="post" action="<%=cpath %>/itemList.do">
                        	<button class="fuck_btn" >더 둘러보기</button>               				
                         	</form>
               </div>
            </div>
               
       <script>
        function pay(){

            alert("정상적으로 결제되었습니다.")


        }

    </script>        
            
         
      </div>
   </section>
<!-- Shopping Cart Section End -->

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



</body>
</html>