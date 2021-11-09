<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
     String cpath=request.getContextPath(); // /m02

%>    
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

</head>
<body>
 <div id="wrap" class="">
        <div id="pos_scroll"></div>
        <div id="container">
        <div id="header">
        
        
        <style>
          #headerLogo{position:relative;width:1050px;height:63px;margin:0 auto}
          #headerLogo .bnr_delivery{position:absolute;left:-1px;top:-28px;margin:auto;height:22px}
          #headerLogo .logo{position:absolute;left:50%;bottom:6px;width:200px;height:79px;margin-left:-100px}
          #headerLogo .logo img{display:block;width:103px;height:79px;margin:0 auto}
          #headerLogo .logo #gnbLogoContainer {margin:0 auto}
          #gnb.gnb_stop{position:fixed;z-index:300;left:0;top:0;width:100%}
          #gnb .gnb_kurly{position:relative;z-index:300;min-width:1050px;background-color:#fff;font-family:'Noto Sans';letter-spacing:-0.3px}
          #gnb .gnb_kurly:after{content:"";position:absolute;z-index:299;left:0;top:56px;width:100%;height:9px;background:url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png) repeat-x 0 100%}
          #gnb .inner_gnbkurly{position:relative;width:1050px;height:56px;margin:0 auto}
          /* 검색창 */
          #gnb .gnb_search{position:absolute;right:108px;top:10px;width:242px}
          #gnb .gnb_search .inp_search{width:242px;height:36px;padding:0 60px 0 14px;border:1px solid #f7f7f6;border-radius:18px;background-color:#f7f7f7;font-family: 'Noto Sans';font-weight:400;font-size:12px;color:#666;line-height:16px;outline:none}
          #gnb .gnb_search .inp_search.focus{background-color:#fff;color:#333}
          #gnb .gnb_search .btn_search{position:absolute;right:5px;top:3px;width:30px;height:30px}
          /* 장바구니 */
          #gnb .cart_count{position:absolute;right:-5px;top:10px}
          #gnb .cart_count .inner_cartcount{text-align:center;font-weight:400}
          #gnb .cart_count .btn_cart{display:block;width:36px;height:36px;background:url(https://res.kurly.com/pc/service/common/2011/ico_cart.svg) no-repeat 50% 50%}
          #gnb .cart_count .btn_cart:hover{background:url(https://res.kurly.com/pc/service/common/2011/ico_cart_on.svg?v=1) no-repeat 50% 50%}
          #gnb .cart_count .num{display:none;position:absolute;left:19px;top:-1px;min-width:20px;height:20px;padding:0 5px;border:2px solid #fff;border-radius:10px;background-color:#5f0080;font-size:9px;color:#fff;line-height:15px;text-align:center;white-space:nowrap}
          #gnb .cart_count img{display:block;width:36px;height:36px;margin:0 auto}
          #gnb .cart_count .msg_cart{display:none;position:absolute;right:-7px;top:61px;width:348px;border:1px solid #ddd;background-color:#fff;/* opacity:0; */}
          #gnb .cart_count .inner_msgcart{display:block;overflow:hidden;padding:20px 0 20px 20px}
          #gnb .cart_count .msg_cart .thumb{float:left;width:46px;height:60px}
          #gnb .cart_count .msg_cart .desc{float:left;width:260px;padding:8px 0 0 20px;font-weight:700;font-size:14px;line-height:21px}
          #gnb .cart_count .msg_cart .desc.add{padding-top:0;margin-top:-5px;}
          #gnb .cart_count .msg_cart .tit{display:block;overflow:hidden;width:100%;color:#999;white-space:nowrap;text-overflow:ellipsis}
          #gnb .cart_count .msg_cart .name{overflow:hidden;float:left;max-width:178px;text-overflow:ellipsis}
          #gnb .cart_count .msg_cart .txt{display:block;padding-top:3px;color:#333}
          #gnb .cart_count .msg_cart .point{position:absolute;right:13px;top:-14px;width:20px;height:14px;background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png) no-repeat 0 0}
          #gnb .cart_count .msg_cart .repeat{display:none}
          #gnb .cart_count .msg_cart .add .repeat{display:block}
          /* GNB메인 */
          #gnb .gnb_main{overflow:hidden;width:1050px;margin:0 auto}
          #gnb .gnb_main .gnb{float:left;width:100%}
          #gnb .gnb_main .gnb li{float:left}
          #gnb .gnb_main .gnb .lst{background:none}
          #gnb .gnb_main .gnb a{overflow:hidden;float:left;width:124px;height:55px;padding:16px 0 0;font-size:16px;color:#333;line-height:20px;text-align:center}
          #gnb .gnb_main .gnb a .txt{font-weight:700}
          #gnb .gnb_main .gnb a:hover,
          #gnb .gnb_main .gnb a.on{font-weight:700;color:#5f0080}
          #gnb .gnb_main .gnb a:hover .txt{border-bottom:1px solid #5f0080}
          #gnb .gnb_main .menu1 a{width:168px}
          #gnb .gnb_main .menu1 .ico{float:left;width:16px;height:14px;margin:5px 14px 0 0;background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png) no-repeat}
          #gnb .gnb_main .menu1 a.on .ico,
          #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png) no-repeat 0 0}
          #gnb .gnb_main .menu1 a.on .txt,
          #gnb .gnb_main .menu1 a:hover .txt,
          #gnb .gnb_main .menu1 .txt{float:left;font-weight:700;border-bottom:0}
          #gnb .gnb_main .menu3 a{width:116px}
          #gnb .gnb_main .lst a{width:116px}
          /* GNB서브 */
          #gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
          #gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
          #gnb .size_over{overflow-x:hidden;overflow-y:auto}
          #gnb .gnb_sub .gnb_menu{width:219px}
          #gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
          #gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
          #gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer}
          #gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
          #gnb .gnb_sub .current .menu{background:#f7f7f7}
          #gnb .gnb_sub .current .txt,
          #gnb .gnb_sub .menu.on.off:hover .txt,
          #gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
          #gnb .gnb_sub .ico{float:left;width:24px;height:24px}
          #gnb .gnb_sub .ico img{width:24px;height:24px}
          #gnb .gnb_sub .ico .ico_off{display:block}
          #gnb .gnb_sub .ico .ico_on{display:none}
          #gnb .gnb_sub .current .ico_off,
          #gnb .gnb_sub .menu.on .ico_off,
          #gnb .gnb_sub .menu:hover .ico_off{display:none}
          #gnb .gnb_sub .current .ico_on,
          #gnb .gnb_sub .menu.on .ico_on,
          #gnb .gnb_sub .menu:hover .ico_on{display:block}
          #gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
          #gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
          #gnb .gnb_sub .current .ico_arrow{display:block}
          #gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
          #gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
          #gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
          #gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
          #gnb .gnb_sub .sub_menu li:first-child{padding-top:11px}
          #gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:18px;cursor:pointer}
          #gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
          #gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
          #gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
          #gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
          #gnb .gnb_sub .recommend li:first-child{padding-top:0}
          #gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
          #gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
          #gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
          #gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
          #gnb .btn_location{overflow:hidden;position:absolute;right:51px;top:10px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting_done.svg) no-repeat 50% 50%;font-size:0;text-indent:-9999px}
          #gnb .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting.svg?ver=1)}
          #gnb .layer_location{display:none;position:absolute;z-index:300;right:41px;top:56px;width:315px;padding:18px 18px 19px 20px;border:1px solid #ddd;background-color:#fff}
          #gnb .layer_location:after{content:"";position:absolute;right:10px;top:-50px;width:36px;height:50px;background:url(https://res.kurly.com/pc/ico/2011/ico_point_up_18x12.svg) no-repeat 50% 100%}
          #gnb .layer_location *{font-weight:700;font-size:16px;color:#333;line-height:24px;letter-spacing:-0.3px}
          #gnb .layer_location .delivery{display:block;padding-top:8px;font-size:14px;line-height:20px}
          #gnb .layer_location .star{color:#5f0080}
          #gnb .layer_location .regular{color:#666}
          #gnb .layer_location .none{color:#999}
          #gnb .layer_location .btn{display:block;width:100%;height:36px;margin-top:17px;padding-bottom:2px;border-radius:3px;font-size:12px;line-height:32px;letter-spacing:0;text-align:center}
          #gnb .layer_location a.btn{padding-top:0}
          #gnb .layer_location .btn.default{border:1px solid #5f0080;background-color:#fff;color:#5f0080}
          #gnb .layer_location .btn.active{border:1px solid #5f0081;background-color:#5f0080;color:#fff}
          #gnb .layer_location .btn .ico{display:inline-block;width:20px;height:20px;margin:6px 0 0 -6px;background:url(https://res.kurly.com/pc/ico/2008/ico_search_40x40.png) no-repeat 50% 50%;background-size:20px 20px;vertical-align:top}
          #gnb .layer_location .group_button{display:block;overflow:hidden}
          #gnb .layer_location .double .default{float:left;width:110px}
          #gnb .layer_location .double .active{float:right;width:159px}
          #gnb .layer_location .double .btn {margin-left: 0; margin-right:0;}
          #gnb .layer_location .emph{color:#5f0080}
          #gnb .location_set:hover .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2010/ico_delivery_setting_on.svg)}
          #gnb .location_set.show .layer_location,
          #gnb .location_set:hover .layer_location{display:block}
          #gnb .location_set .btn_location.off,
          #gnb .location_set .btn_location.off:hover{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_off.svg?ver=1);cursor:default}
          #gnb .location_set.off .layer_location,
          #gnb .location_set.off:hover .layer_location{display:none}
          /* 오류 */
          #gnb .layer_location .error .txt{display:block;color:#333}
          @media
          only screen and (-webkit-min-device-pixel-ratio: 1.5),
          only screen and (min-device-pixel-ratio: 1.5),
          only screen and (min-resolution: 1.5dppx) {
            #gnb .gnb_sub .ico_new{background:url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png) no-repeat 0 0;background-size:14px 14px}
            #gnb .cart_count .msg_cart .point{background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png) no-repeat 0 0;background-size:20px 14px}
            #gnb .gnb_main .menu1 .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png) no-repeat 0 0;background-size:16px 14px}
            #gnb .gnb_main .menu1 a.on .ico,
            #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png) no-repeat 0 0;background-size:16px 14px}
          }
          .gnb_search .init{position:relative}
          .gnb_search .init .btn_delete{overflow:hidden;position:absolute;left:170px;top:-36px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2010/ico_search_del.svg) no-repeat 50% 50%;background-size:12px 12px;font-size:0;line-height:0;text-indent:-9999px;opacity:0}
          .gnb_search .init .btn_delete.on{opacity:1}
        </style>
        <!--header section-->
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
                                    <div class="cart__price">Cart: <span></span></div>
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
        <!--header end-->
        <div id="qnb" class="quick-navigation" style="top: 70px;">
        <style>
            #qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
            .goods-goods_view #qnb{top:20px}
            /* 배너 */
            #qnb .bnr_qnb{padding-bottom:7px}
            #qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}
            /* 메뉴 */    
            #qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
            #qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
            #qnb .link_menu:hover,
            #qnb .link_menu.on{color:#5f0080}
            /* 최근본상품 */
            #qnb .side_recent{position:relative;margin-top:6px;border:1px solid #ddd;background-color:#fff}
            #qnb .side_recent .tit{display:block;padding:22px 0 6px;text-align:center}
            #qnb .side_recent .list_goods{overflow:hidden;position:relative;width:60px;margin:0 auto}
            #qnb .side_recent .list{position:absolute;left:0;top:0}
            #qnb .side_recent .link_goods{display:block;overflow:hidden;width:60px;height:80px;padding:1px 0 2px}
            #qnb .side_recent .btn{display:block;overflow:hidden;width:100%;height:17px;border:0 none;font-size:0;line-height:0;text-indent:-9999px}
            
            #qnb .side_recent .btn_up{position:absolute;left:0;top:0;background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png) no-repeat 50% 50%}
            #qnb .side_recent .btn_up.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png) no-repeat 50% 50%}
            #qnb .side_recent .btn_down{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png) no-repeat 50% 0}
            #qnb .side_recent .btn_down.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png) no-repeat 50% 0}
            
            
            @media
            only screen and (-webkit-min-device-pixel-ratio: 1.5),
            only screen and (min-device-pixel-ratio: 1.5),
            only screen and (min-resolution: 1.5dppx) {
                #qnb .side_recent .btn_up{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);background-size:12px 18px}
                #qnb .side_recent .btn_down{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);background-size:12px 18px}
                #qnb .side_recent .btn_up.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);background-size:12px 18px}
                #qnb .side_recent .btn_down.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);background-size:12px 18px}
            }
            @media all and (max-width: 1250px){
                #qnb{display:none}
            }
        </style>
        
        <div class="bnr_qnb" id="brnQuick"><a href="" id="brnQuickObj">
            
        </a>
        
        
        
        </div>
        
        
        <div class="side_menu">
        
        
        
        </div>
        <div class="side_recent" style="display:none">
        <strong class="tit">최근 본 상품</strong>
        <div class="list_goods" data-height="209" style="height: 0px;">
        <ul class="list"></ul>
        </div>
        <button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
        <button type="button" class="btn btn_down off">최근 본 상품 아래로 내리기</button>
        </div>

        </div>
        <div class="page_aticle">
        
       
        <div class="type_form member_join ">
        <form id="form" name="frmMember" method="post" action="/shop/member/indb.php" onsubmit="return chkForm2(this)" novalidate="">
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
        <th>아이디<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="text" name="m_id" value="" maxlength="16" required="" fld_esssential="" option="regId" label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
        <input type="hidden" name="chk_id" required="" fld_esssential="" label="아이디중복체크" value="">
        <a class="btn default" href="javascript:chkId()">중복확인</a>
        <p class="txt_guide square">
        <span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
        <span class="txt txt_case2">아이디 중복확인</span>
        </p>
        </td>
        </tr>
        <tr>
        <th>비밀번호<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="password" name="password" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">
        <p class="txt_guide square">
        <span class="txt txt_case1">10자 이상 입력</span>
        <span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
        <span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
        </p>
        </td>
        </tr>
        <tr class="member_pwd">
        <th>비밀번호확인<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="password" name="password2" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
        <p class="txt_guide square">
        <span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
        </p>
        </td>
        </tr>
        <tr>
        <th>이름<span class="ico">*<span class="screen_out">필수항목</span></span></th>
        <td>
        <input type="text" name="name" value="" required="" fld_esssential="" label="이름" placeholder="이름을 입력해주세요">
        </td>
        </tr>
        <tr>
            <tr>
                <th>사업자 번호<span class="ico">*<span class="screen_out"></span></span></th>
                <td>
                <input type="text" name="name" value="" required="" fld_esssential="" label="사업자번호" placeholder="사업자 번호를 입력해주세요">
                </td>
                </tr>
        
        </tr>
        <tr>
            <th>폰 번호<span class="ico">*<span class="screen_out"></span></span></th>
            <td>
            <input type="text" name="name" value="" required="" fld_esssential="" label="폰번호" placeholder="폰 번호를 입력해주세요">
            </td>
            </tr>
        <tr class="field_phone">
        
        
        </tr>
        <tr>
        
        
        </tr>
        <tr class="select_sex">
        
        <td>
        
        
        
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
        <button type="button" class="btn active btn_join" onclick="formJoinSubmit()">가입하기</button>
        </div>
        </form>
        </div>
        <iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display:none;"></iframe>
        <iframe id="ifrmHpauth" name="ifrmHpauth" style="display:none;"></iframe>
        </div>
        </div>
    
        
        
        </div>
        <div class="inner_layer layer_normal">
        
        <div class="ani">
        <img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="택배배송 이미지">
        </div>
        
        
        
        </div>
        <div class="inner_layer layer_none">
        
        <div class="ani">
        <img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="배송불가 이미지">
        </div>
        
        
        </div>
        <div class="layer_btn1">
        
        </div>
        <button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
        </div>
        
<!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>
<!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script><!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script><!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script><!-- Code injected by live-server -->
<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script></body></html>