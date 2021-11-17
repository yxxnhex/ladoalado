<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
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
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Google Font --
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    '/2    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/member1.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/common.css">
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
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style1.css" type="text/css">
    <script src= "<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<script>

function chkForm2() {
    console.log("test");
    var id = document.querySelector('input[name="seller_id"]');
    var pw1 = document.querySelector('input[name="seller_pwd"]');
    var pw2 = document.querySelector('input[name="seller_pwd_ck"]');
    var name = document.querySelector('input[name="seller_name"]');
    var phone = document.querySelector('input[name="seller_phone"]');
    var bnum = document.querySelector('input[name="seller_bnum"]');
    if ($('.username_input').attr("check_result") == "fail"){
         alert("아이디 중복체크를 해주시기 바랍니다.");
      $('.username_input').focus();
         return false;
         
       }
       
      
            // 전체 검사
            // 아이디가 공백이거나 6글자 이상이면
            if (id.value == '' || id.value.length < 6 ) {
               alert('아이디를 6자이상 입력해주세요!');
               //id포커스
               id.focus();
               return false;
            // 비밀번호가 6자리 미만이거나 숫자가 아닐때
            } else if (pw1.value.length < 6 || pw1.value=='') {
               alert('비밀번호를 6자 이상 입력해주세요!');
               //비밀번호 포커스
               pw1.focus();
               return false;
            // 비밀번호가 처음입력한 값과 다를시
            } else if (pw1.value != pw2.value) {
               alert('패스워드가 일치하지 않습니다.');
               pw2.focus();
               return false;
            // 성별이 체크가 안되었을시
           <!-- } else if (genderVal == false) {
               alert("성별을 입력하세요!");
               gender[0].focus();
               return false; -->
               // 전부완료되면 메인 페이지 이동
            } else {
               
               return true;
               
            }
         }
         
         $('.username_input').change(function () {
              $('#id_check_sucess').hide();
              $('.id_overlap_button').show();
              $('.username_input').attr("check_result", "fail");
         })
         
         
   
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
          
         <!-- Breadcrumb Begin -->
      <div class="breadcrumb-option">
          <div class="container">
              <div class="row">
                  <div class="col-lg-6 col-md-6 col-sm-6">
                      <div class="breadcrumb__text1">
                          <h2>판매자 회원가입</h2>
                   
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <!-- Breadcrumb End -->
              
              
        
       
        
       
        
  
        
        
        <div id="qnb" class="quick-navigation" style="top: 70px;">
        <div class="type_form member_join ">
        <form id="form" name="frmMember" method="post" action="<%=cpath%>/sellerInsert.do" onsubmit="return chkForm2()" novalidate="">
        <input type="hidden" name="mode" value="joinMember">
        <input type="hidden" name="check_mobile" value="">
        <input type="hidden" name="auth_finish_code" value="">
        <input type="hidden" name="rncheck" value="">
        <input type="hidden" name="dupeinfo" value="">
        <input type="hidden" name="pakey" value="">
        <input type="hidden" name="foreigner" value="">
        <input type="hidden" name="passwordSkin" value="Y">
        <input type="hidden" name="private2" value="">
        <input type="hidden" name="private3" value="">
        <input type="hidden" name="return_url" value="">
        <p class="page_sub"><span class="ico">*</span>필수입력사항</p>
        <table class="tbl_comm">
        <tbody><tr class="fst">
        
        <th>아이디<span class="sereen_out">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="text" class="username_input" name="seller_id"  check_result="fail" value="" maxlength="16" required="" fld_esssential="" option="regId" label="아이디" placeholder="6자 이상의 문자를 입력하세요">
        <input type="hidden" name="chk_id" required="" fld_esssential="" label="아이디중복체크" value="">
        <button type="button" class="id_overlap_button" onclick="Test1()">중복검사</button>
        <img id="id_check_sucess" style="display: none;">
        <p class="txt_guide square">
        <span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
        <span class="txt txt_case2">아이디 중복확인</span>
        </p>
        </td>
        </tr>
        <tr>
        <th>비밀번호<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="password" name="seller_pwd" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">
        <p class="txt_guide square">
        <span class="txt txt_case1"></span>
        <span class="txt txt_case2"></span>
        <span class="txt txt_case3"></span>
        </p>
        </td>
    
        </tr>
        <tr class="member_pwd">
        <th>비밀번호확인<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="password" name="seller_pwd_ck" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
        <p class="txt_guide square">
        <span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
        </p>
        </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <tr>
                <th>회사(가게)명<span class="ico">*<span class="screen_out"></span></span></th>
                <td>
                <input type="text" name="seller_company" value="" required="" fld_esssential="" label="회사(가게)명" placeholder="회사(가게)명을 입력해주세요">
                </td>
                </tr>
        
        </tr>
        <tr>
            <th>연락처<span class="ico">*<span class="screen_out"></span></span></th>
            <td>
            <input type="text" name="seller_phone" value="" required="" fld_esssential="" label="연락처" placeholder="연락처를 입력해주세요">
            </td>
            </tr>
        <tr class="field_phone">
        
        
        </tr>
        <tr>
        </tr>
        <tr>
        <td>
        <script type="text/javascript">
        

        function Test1() {
           
           
           
            if ($('.username_input').val() == '') {
                 alert('아이디를 입력해주세요.')
                    return;
            }
            
 
            id_overlap_input = document.querySelector('input[name="seller_id"]');

            $.ajax({
                 url: "selleridcheck.do",
                 data: {
                   'seller_id': id_overlap_input.value
              },
                 datatype: 'text',
                 success: function (response) {
                    //if(response=='ok')
                console.log(response);
                if (response == "no") {
                     alert("이미 존재하는 아이디 입니다.");
                     id_overlap_input.focus();
                     return;
              } else {
                     alert("사용가능한 아이디 입니다.");
                     $('.username_input').attr("check_result", "success");
                     $('#id_check_sucess').show();
                     $('.id_overlap_button').hide();
                  return;
                  }
                
              }
            });
          }
        
        </script>
        
        </td>
  
   
        </div>
        <p class="txt_guide">
        <span class="txt bad"></span>
        </p>
        </td>
        </tr>
        <tr class="route" id="selectRecommend">
        
        
        </tr>
        </tbody></table>
        <div id="formSubmit" class="form_footer">
        <button type="submit" class="btn active btn_join" style="border: 0;">가입하기</button>
        <h1>　</h1>
        <h1>　</h1>
		<h1>　</h1>
        	
        </div>
        </form>
        </div>
        
        </div>
        </div>
    
        
       
         </div>
        
        
        
         </div>
        
 
        
      </script>
      
      
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