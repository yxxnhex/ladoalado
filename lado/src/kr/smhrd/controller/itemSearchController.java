package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class itemSearchController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("컨트롤러 실행");
		mainDAO dao=new mainDAO();
		String item_search=request.getParameter("item_search");
		System.out.println(item_search);
		List<itemVO> itemSearch_list=dao.itemSearch(item_search);
		System.out.println("dao 끝");
		request.setAttribute("itemSearch_list", itemSearch_list);
		System.out.println("데이터 담기" + itemSearch_list);
		
		
		return "itemSearch";
	}

}
