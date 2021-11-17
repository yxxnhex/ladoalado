package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.CartDAO;

public class payController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int user_num=Integer.parseInt(request.getParameter("user_num"));
		
		CartDAO dao=new CartDAO();
		dao.pay(user_num);
		
		
		
		
		return "redirect:/mainPage.do";
	}

}
