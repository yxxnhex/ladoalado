package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.UserVO;
import kr.smhrd.model.mainDAO;
import kr.smhrd.model.sellerVO;

public class selleridcheckController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String seller_id=request.getParameter("seller_id");
		
		
		mainDAO sellerid=new mainDAO();
		
	
		
		sellerVO sellerids = new sellerVO();
	
		sellerids.setSeller_id(seller_id);
		sellerVO vo4=sellerid.sellerid_check(sellerids);
		String ret = "data:no";
		if(vo4==null) {
			ret = "data:yes";
		}
		
		return ret;
	}

}
