package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.CartDAO;
import kr.smhrd.model.UserVO;
import kr.smhrd.model.cartVO;
import kr.smhrd.model.mainDAO;

public class cartInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		System.out.println("유저 번호 :  "+request.getParameter("user_num"));
	      System.out.println("아이템 번호 :  "+request.getParameter("item_num"));
	      System.out.println("카트 수량 :  "+request.getParameter("cart_cnt"));
	      
	      
	      
	      
	      
	      
	      String str = request.getParameter("user_num");
	      int user_num = 0; 
	      user_num = Integer.parseInt(str);

	      int item_num=Integer.parseInt(request.getParameter("item_num")); //hidden으로 가져오기
	      int cart_cnt=Integer.parseInt(request.getParameter("cart_cnt"));
	      System.out.println("파라메터 인트값으로 가져오기");
	      
	      CartDAO dao=new CartDAO();
	      
	      cartVO vo1=new cartVO();
	      vo1.setUser_num(user_num);
	      vo1.setItem_num(item_num);
	      vo1.setCart_cnt(cart_cnt);
	      
	      List<cartVO> list=dao.cartList();
	      for(cartVO vo : list) {
	         if(vo.getUser_num() == vo1.getUser_num() && vo.getItem_num() == vo1.getItem_num()) {
	            dao.cartUpdate(vo1);
	            return "redirect:/itemList.do";
	         }
	      }
	      
	      
	      dao.cartInsert(vo1);
	      
	      return "redirect:/itemList.do";
	   }

}
