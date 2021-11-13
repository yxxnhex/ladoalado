package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.itemSortVO;
import kr.smhrd.model.mainDAO;

public class itemSortController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		mainDAO dao=new mainDAO();
		String itemSort=request.getParameter("sort");
		
		
		System.out.println(itemSort);
		
		
		

		List<itemSortVO> itemSort_list=dao.itemSort(itemSort);
		request.setAttribute("itemSort_list", itemSort_list);
		
		return "itemSort";
	}

}
