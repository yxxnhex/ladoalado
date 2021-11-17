package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.mainDAO;
import kr.smhrd.model.sellerVO;

public class sellerInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String seller_id=request.getParameter("seller_id");
		String seller_pwd=request.getParameter("seller_pwd");
		String seller_phone=request.getParameter("seller_phone");
		String seller_company=request.getParameter("seller_company");
		
		sellerVO vo=new sellerVO();
		vo.setSeller_company(seller_company);
		vo.setSeller_id(seller_id);
		vo.setSeller_phone(seller_phone);
		vo.setSeller_pwd(seller_pwd);
		
		mainDAO dao=new mainDAO();
		dao.sellerInsert(vo);
		
		
		return "redirect:/mainPage.do";
	}


}
