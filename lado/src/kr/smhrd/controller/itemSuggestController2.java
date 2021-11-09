package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.ingredientVO;
import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class itemSuggestController2 implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int item_num=Integer.parseInt(request.getParameter("item_num"));
		mainDAO dao=new mainDAO();
		itemVO vo=dao.itemContent_item(item_num);
		request.setAttribute("vo", vo);
		
		ingredientVO vo1=dao.itemContent_ingre(item_num);
		request.setAttribute("vo1", vo1);
		
		
		List<itemVO> list=dao.itemList();
		
		Random rd=new Random();
		int mealkit_rd_num= 
				rd.nextInt(list.size())+1;
		while(mealkit_rd_num == item_num) {
			mealkit_rd_num=rd.nextInt(list.size())+1;
		};
		itemVO vo2=dao.itemContent_item(mealkit_rd_num);
		request.setAttribute("vo2", vo2);
		ingredientVO vo3=dao.itemContent_ingre(mealkit_rd_num);
		request.setAttribute("vo3", vo3);
		
				
		return "itemContent";
	}

	
}
