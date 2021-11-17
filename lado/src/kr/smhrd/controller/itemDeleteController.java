package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class itemDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int item_num = Integer.parseInt(request.getParameter("item_num"));
		int seller_num = Integer.parseInt(request.getParameter("seller_num"));
	      
		mainDAO dao = new mainDAO();
	    itemVO vo = new itemVO();
	      vo.setItem_num(item_num);
	      vo.setSeller_num(seller_num);
	      
	      dao.ingredientDelete(item_num);
	      dao.itemDelete(vo);      
	      
	      
	      
	      
	      return "redirect:/manageItem.do?seller_num="+seller_num;
	}

}
