package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.CartDAO;
import kr.smhrd.model.cartVO;

public class cartDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int item_num = Integer.parseInt(request.getParameter("item_num"));
		int user_num = Integer.parseInt(request.getParameter("user_num"));
	      
	    cartVO vo = new cartVO();
	      vo.setItem_num(item_num);
	      vo.setUser_num(user_num);
	      
	      CartDAO dao = new CartDAO();
	      dao.cartDelete(vo);      
	      
	      
	      return "redirect:/cartView.do?user_num="+user_num;
		
	}

}
