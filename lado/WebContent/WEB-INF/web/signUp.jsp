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


  

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    
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
      var id = document.querySelector('input[name="user_id"]');
      var pw1 = document.querySelector('input[name="user_pwd"]');
      var pw2 = document.querySelector('input[name="user_pwd_ck"]');
      var name = document.querySelector('input[name="usre_name"]');
      var gender = document.querySelectorAll('input[name="user_gender"]');
      var age = document.querySelector('input[name="user_age"]');
      if ($('.username_input').attr("check_result") == "fail"){
           alert("아이디 중복체크를 해주시기 바랍니다.");
        $('.username_input').focus();
           return false;
         }
   
   
   
   
   
   
   //성별검사
   var genderVal = false;
   for (var i = 0; i < gender.length; i++) {
      //성별을 검사하면서 한개라도 체크가되어있다면
      if (gender[i].checked) {
         //true를 셋팅
         genderVal = true;
      }
   }
   // 전체 검사
   // 아이디가 공백이거나 4글자 미만이면
   if (id.value == '' || id.value.length < 6 ) {
      alert('아이디를 6자이상 입력해주세요!');
      //id포커스
      id.focus();
      return false;
   // 비밀번호가 4자리 미만이거나 숫자가 아닐때
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
   } else if (genderVal == false) {
      alert("성별을 입력하세요!");
      gender[0].focus();
      return false;
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

      function id_overlap_check() {

           


           if ($('.username_input').val() == '') {
                alert('아이디를 입력해주세요.')
                   return;
           }
           
        

           id_overlap_input = document.querySelector('input[name="user_id"]');

           $.ajax({
                url: "idcheck.do",
                data: {
                  'user_id': id_overlap_input.value
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
                <div class="breadcrumb__text">
                    <h2>회원가입</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
   
   
   
   
<!-- Join section start -->   
   
<div id="qnb" class="quick-navigation" style="top: 70px;">
	<div class="type_form member_join ">
        <form id="form" name="frmMember" method="post" action="<%=cpath%>/userInsert.do" onsubmit="return chkForm2();">
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
        		<tbody>
        			<tr class="fst">
           				<th>아이디<span>*<span class="screen_out">필수항목</span></span></th>
        				<td>
         					<input type="text" class="username_input" name="user_id" check_result="fail" value=""  maxlength="16" required="" fld_esssential="" option="regId" label="아이디" placeholder="6자 이상의 문자를 입력하세요"/>
        					<input type="hidden" name="chk_id" required="" fld_esssential="" label="아이디중복체크" value="">
      						<button type="button" class="id_overlap_button" onclick="id_overlap_check();">중복검사</button>
     
		       				<img id="id_check_sucess" style="display: none;">
        					<p class="txt_guide square">
        						<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
        					</p>
        				</td>
        			</tr>
        			<tr>
				        <th>비밀번호<span class="ico">*<span class="screen_out">필수항목</span></span></th>
				        <td>
					        <input type="password" name="user_pwd" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="6자 이상의 문자를 입력하세요">
					        <p class="txt_guide square">
					    	    <span class="id_input_re1"></span>
					        	<span class="id_input_re1"></span>
					        	<span class="txt txt_case3"></span>
        					</p>
        				</td>
        			</tr>
        			<tr class="member_pwd">
        				<th>비밀번호확인<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        				<td>
					        <input type="password" name="user_pwd_ck" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
					        <p class="txt_guide square">
						        <span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
					        </p>
        				</td>
        			</tr>
        			<tr>
				        <th>이름<span class="ico">*<span class="screen_out">필수항목</span></span></th>
				        <td>
				        <input type="text" name="user_name" value="" required="" fld_esssential="" label="이름" placeholder="이름을 입력해주세요">
				        </td>
			        </tr>
      				
      				<tr class="gender">
			            <th>성별</th>
			            <td style="color: black;">
			            
				            <label class="gender_label">
				            	<input type="radio" name="user_gender" value="man"  style="padding:20px;">
				            	<span class="ico"></span>
				            	남자　　　　　
				            	
				            </label>
			      
				            <label class="gender_label">
				           		<input type="radio" name="user_gender" value="woman">
				            	<span class="ico" ></span>
				            	여자
				            </label>	                       
			            
			       		
			            </td>
			            </tr>
      				
      				
					<tr class="age">
        				<th>나이</th>
        				<td>
            				<input type="text" name="user_age" value="" required="" fld_esssential="" label="나이" placeholder="나이를 입력해주세요">
        					<div class="age">
        				        <span class="bar"></span>
        			        </div>
        					<p class="txt_guide">
        						<span class="txt bad"></span>
        					</p>
        				</td>
        			</tr>
        	</tbody>
        </table>
        
        <div id="formSubmit" class="form_footer">
        	<button type="submit" class="btn active btn_join" style="border:0;">가입하기</button>
        	<h1>　</h1>
        	<h1>　</h1>
        	<h1>　</h1>
        </div>
		</form>
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



</body>
</html>