<%@page import="kr.smhrd.model.sellerVO"%>
<%@page import="kr.smhrd.model.UserVO"%>
<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

    String cpath=request.getContextPath();
	UserVO user=(UserVO)session.getAttribute("succ");
	sellerVO seller=(sellerVO)session.getAttribute("succ");

%> 

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Log In / Sign Up - pure css - #12</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
  <link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style1.css">

</head>
<body>
	<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="logo">
					<h1 class="site_logo">
                        <img src="/images/logo.png" alt="">                        
                    </h1>
				</div>
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3"><span>로그인</span><span>회원가입</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">구매자 로그인</h4>
											<form class="user_login" action ="<%=cpath%>/login.do" method="post">
												<div class="form-group">
													<input type="text" name="user_id" class="form-style" placeholder="아이디를 입력해주세요" id="logid" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>	
												<div class="form-group mt-2">
													<input type="password" name="user_pwd" class="form-style" placeholder="비밀번호를 입력해주세요" id="logpwd" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
												<button type="submit" class="btn mt-4">로그인</button>
											</form>
                            				<p class="mb-0 mt-4 text-center"><a href="#0" class="link">비밀번호를 잊어 버렸습니까?</a></p>
				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">판매자 로그인</h4>
												<div class="form-group">
												<form class="seller_login" action="<%=cpath%>/login.do" method="post">
													<div class="form-group mt-2">
														<input type="text" name="seller_id" class="form-style" placeholder="아이디를 입력해주세요" id="logid" autocomplete="off">
														<i class="input-icon uil uil-at"></i>
													</div>
													<div class="form-group mt-2">
														<input type="password" name="seller_pwd" class="form-style" placeholder="비밀번호를 입력해주세요" id="logpwd" autocomplete="off">
														<i class="input-icon uil uil-lock-alt"></i>
													</div>
													<button type="submit" class="btn mt-4">로그인</button>
												</form>
											<p class="mb-0 mt-4 text-center"><a href="#0" class="link">비밀번호를 잊어 버렸습니까?</a></p>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
  <script  src="./script.js"></script>

</body>
</html>
