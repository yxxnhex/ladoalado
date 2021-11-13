package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class manageItemController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int seller_num=Integer.parseInt(request.getParameter("seller_num"));
		
		mainDAO dao=new mainDAO();
		List<itemVO> list=dao.manageItem(seller_num);

		request.setAttribute("list", list);
		
		return "manageItem";
	}

}
