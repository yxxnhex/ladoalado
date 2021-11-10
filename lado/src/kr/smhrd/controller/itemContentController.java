package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;

import kr.smhrd.model.ingredientVO;
import kr.smhrd.model.itemVO;
import kr.smhrd.model.kcal_calVO;
import kr.smhrd.model.mainDAO;

public class itemContentController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int item_num=Integer.parseInt(request.getParameter("item_num"));
		System.out.println("파라미터 받아오기 : "+item_num);
		mainDAO dao=new mainDAO();
		itemVO vo=dao.itemContent_item(item_num);
		request.setAttribute("vo", vo);
		System.out.println("itemvo 받아오기 : "+vo.getItem_name());
		
		ingredientVO vo1=dao.itemContent_ingre(item_num);
		request.setAttribute("vo1", vo1);
		
		System.out.println("ingredientvo 받아오기 : "+vo1.getItem_kcal());
		
		List<itemVO> list=dao.itemList();
		
		
		
		Random rd=new Random();
//		int mealkit_rd_num=
//				rd.nextInt(list.size())+1;
//		while(mealkit_rd_num == item_num) {
//			mealkit_rd_num=rd.nextInt(list.size())+1;
//		};
//		
		
		
		int suggest[] = new int[3];
		
		for(int i=0; i<suggest.length; i++) {
			suggest[i] = rd.nextInt(list.size())+1;
			
			for(int j=0; j<i; j++) {
				if(suggest[i] == suggest[j]) {
					i--;
				}
			}
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
		System.out.println("랜덤 밀키트 정보 가져오기  : "+ vo6.getItem_name());
		ingredientVO vo7=dao.itemContent_ingre(suggest[2]);
		request.setAttribute("vo7", vo7);
		 
		
		int user_age=Integer.parseInt(request.getParameter("user_age"));
		String user_gender=request.getParameter("user_gender");
		
		System.out.println("유저 파라미터 가져오기 : "+user_age);
		
		kcal_calVO kcal_cal_vo= new kcal_calVO();
		
		if(user_gender.equals("man")) {
			kcal_cal_vo=dao.kcal_cal_man(user_age);
		}else {
			kcal_cal_vo=dao.kcal_cal_woman(user_age);
		}
		
		request.setAttribute("kcal_cal_vo", kcal_cal_vo);
		
		System.out.println("필요칼로리 가져오기"+kcal_cal_vo.getKcal());
				
		return "itemContent";
	}

	
}
