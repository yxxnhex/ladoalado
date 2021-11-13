<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.sellerVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    // Object Cating(객체형변환-제일중요)
    String cpath=request.getContextPath(); // /m02    
    ArrayList<itemVO> list=(ArrayList<itemVO>)request.getAttribute("list");
    UserVO user=(UserVO)session.getAttribute("succ");
    sellerVO seller=(sellerVO)session.getAttribute("succ2");
   itemVO vo = (itemVO) request.getAttribute("vo");

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
                <div class="container_text">
                    <h2>장바구니</h2>
                    <h1>　</h1>
                    <h4><%=vo.getItem_company() %></h4>
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
                    <table class="manage_table">
                        <thead>
                            <tr>
                                <th style="text-align: left;">삼품사진</th>
                                <th>상품명</th>
                                <th>가격</th>
                                <th></th>
                            </tr>
                        </thead>
                          <tbody>
                        <% if(list.size() == 0){ %>
                        <tr>
                        <tr>
                           <td class="product__cart__item">
                              <div class="product__cart__item__pic">
                                 <img src="img/shop/cart/cart-1.jpg" alt="">
                              </div>
                              <div class="product__cart__item__text">
                                 <h6>등록한 상품이 없습니다.</h6>
                              </div>
                           </td>
                        </tr>
                        <% } else { %>
                        <% for(int i = 0; i < list.size(); i++) { %>
                        <% itemVO vo2 = list.get(i); %>
                        <tr>
                           <td class="product__cart__item">
                              <div class="product__cart__item__pic">
                                 <img src="img/shop/cart/cart-1.jpg" alt="">
                              </div>
                              <div class="product__cart__item__text">
                                 <h6><%=vo2.getItem_name() %></h6>
                              </div>
                           </td>
                           <td class="quantity__item">
                              <div class="quantity">
                                 <div class="pro-qty">
                                    <h6><%=vo2.getItem_price() %></h6>
                                 </div>
                              </div>
                           </td>
                           <td class="quantity__item">
                              <div class="quantity">
                                 <div class="pro-qty">
                                    <h6><%=vo2.getItem_company() %></h6>
                                 </div>
                              </div>
                           </td>
                        </tr>
                        <% } %>
                        <% } %>
                  </tbody>
                    </table>
            </div>
         </div>
      </div>
   </div>
</section>


</body>
</html>