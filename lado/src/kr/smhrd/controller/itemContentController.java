package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.ingredientVO;
import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class itemContentController implements Controller {

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
//		int mealkit_rd_num=
//				rd.nextInt(list.size())+1;
//		while(mealkit_rd_num == item_num) {
//			mealkit_rd_num=rd.nextInt(list.size())+1;
//		};
//		
		
		
		int suggest[] = new int[4];
		
		for(int i=0; i<suggest.length; i++) {
			suggest[i] = rd.nextInt(list.size())+1;
			
			for(int j=0; j<i; j++) {
				if(suggest[i] == suggest[j]) {
					i--;
					break;
				}
				itemVO vo2=dao.itemContent_item(suggest[0]);
				request.setAttribute("vo2", vo2);
				ingredientVO vo3=dao.itemContent_ingre(suggest[0]);
				request.setAttribute("vo3", vo3);
				
				itemVO vo4=dao.itemContent_item(suggest[1]);
				request.setAttribute("vo4", vo4);
				ingredientVO vo5=dao.itemContent_ingre(suggest[1]);
				request.setAttribute("vo5", vo5);
				
				itemVO vo6=dao.itemContent_item(suggest[2]);
				request.setAttribute("vo6", vo6);
				ingredientVO vo7=dao.itemContent_ingre(suggest[2]);
				request.setAttribute("vo7", vo7);
			}
		}
		
		
				
		return "itemContent";
	}

	
}
