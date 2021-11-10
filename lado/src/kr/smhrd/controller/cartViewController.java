package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.CartDAO;
import kr.smhrd.model.cartVO;
import kr.smhrd.model.cartViewVO;
import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class cartViewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	 	int user_num=Integer.parseInt(request.getParameter("user_num"));
		
		System.out.println(user_num);
		
		CartDAO dao=new CartDAO();
		List<cartViewVO> list=dao.cartView(user_num);
		
		
		
		
		request.setAttribute("list", list);
		
		
		
		
		
		
		return "cartView";
	}

}
