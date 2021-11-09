package kr.smhrd.controller;

import java.io.IOException;

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
		
		
		int user_num=Integer.parseInt(request.getParameter("user_num")); // hidden으로 가져오기
		int item_num=Integer.parseInt(request.getParameter("item_num")); //hidden으로 가져오기
		int cart_cnt=Integer.parseInt(request.getParameter("cart_cnt"));
		System.out.println("파라메터 인트값으로 가져오기");
		cartVO vo=new cartVO();
		vo.setUser_num(user_num);
		vo.setItem_num(item_num);
		vo.setCart_cnt(cart_cnt);
		
		CartDAO dao=new CartDAO();
		dao.cartInsert(vo);
		
		return "redirect:/mainPage.do";
	}

}
