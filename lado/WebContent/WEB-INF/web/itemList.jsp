<%@page import="kr.smhrd.model.itemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    // Object Cating(객체형변환-제일중요)
    ArrayList<itemVO> list=(ArrayList<itemVO>)request.getAttribute("list");
    String cpath=request.getContextPath(); // /m02
    
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


    <!--메뉴 카테고리 영역-->
    <div class="">
        <div class="menupackage">
            <div class="category_title">
                <p class="banner"></p>
                <div style="width:100%; height:40px; display:block;"></div>
                <h2>
                    <span>밀키트</span>
                </h2>
            </div>
            <div>
                <ul class="menu_category">
                    <li class="">한식</li>
                    <li class="">일식</li>
                    <li class="">중식</li>
                    <li class="">양식</li>
                </ul>
            </div>
        </div>
    </div>
    <!--메뉴 카테고리 종료-->

    <!--상품 종류 영역-->
    <div class="product_list">
        <ul class="product_list_grid">
        <% for(itemVO vo : list){ %>
            <li class="item">
                <div class=thumbnail>
                    <div class="">
                        <a href="<%=cpath%>/itemContent.do?item_num=<%=vo.getItem_num()%>">
                            <img src="#">
                        </a>
                    </div>
                </div>
                <div class="product_description">
                    <strong class="product_spec">
                        <a href="<%=cpath%>/itemContent.do?item_num=<%=vo.getItem_num()%>"><h3><%=vo.getItem_name()%></h3></a>
                        <h4><%=vo.getItem_price()%>원</h4>
                        <h4><%=vo.getItem_company()%></h4>
                    </strong>
                </div>
            </li>
            <%   }  %>
        </ul>
        
    </div>






<!--  
	<table>
		   <tr>
		     <td>번호</td>
		     <td>밀키트이름</td>  
		     <td>제조사</td>
		     <td>가격</td>
		     <td>용량</td>
		     <td>인분 수</td>
		     <td>조리시간</td>
		     <td>등록일</td>
		     <td>판매자번호</td>
		   </tr>
		   <% for(itemVO vo : list){  %>
		   <tr>
		     <td><%=vo.getItem_num()%></td>
		     <td><a href="<%=cpath%>/itemContent.do?item_num=<%=vo.getItem_num()%>"><%=vo.getItem_name()%></a></td>
		     <td><%=vo.getItem_company()%></td>
		     <td><%=vo.getItem_price()%></td>
		     <td><%=vo.getItem_gram()%></td>
		     <td><%=vo.getItem_serve()%></td>
		     <td><%=vo.getItem_time()%></td>
		     <td><%=vo.getReg_date()%></td>
		     <td><%=vo.getSeller_num()%></td>
		   </tr>   
		   <%   }  %>
		   
		</table>
-->
</body>
</html>