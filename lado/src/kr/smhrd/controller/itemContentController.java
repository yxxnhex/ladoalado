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
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import kr.smhrd.model.UserVO;
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
		
		System.out.println("세부 아이템 번호"+item_num);
		
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
		System.out.println("item_num2는"+request.getParameter("item_num2"));
		
		System.out.println(request.getParameter("compare"));
		if(request.getParameter("compare")!=null) {
			item_num = Integer.parseInt(request.getParameter("item_num"));
			vo = dao.itemContent_item(item_num);
			request.setAttribute("vo", vo);
			vo1 = dao.itemContent_ingre(item_num);
			request.setAttribute("vo1", vo1);
			int item_num2 = Integer.parseInt(request.getParameter("item_num2"));
			itemVO vo2 = dao.itemContent_item(item_num2);
			request.setAttribute("vo2", vo2);
			ingredientVO vo3 = dao.itemContent_ingre(item_num2);
			request.setAttribute("vo3", vo3);
			int item_num3 = Integer.parseInt(request.getParameter("item_num3"));
			itemVO vo4 = dao.itemContent_item(item_num3);
			request.setAttribute("vo4", vo4);
			ingredientVO vo5 = dao.itemContent_ingre(item_num3);
			request.setAttribute("vo5", vo5);
			int item_num4 = Integer.parseInt(request.getParameter("item_num4"));
			itemVO vo6 = dao.itemContent_item(item_num4);
			request.setAttribute("vo6", vo6);
			ingredientVO vo7 = dao.itemContent_ingre(item_num4);
			request.setAttribute("vo7", vo7);
			System.out.println("원 데이터"+vo);
			System.out.println("두번째데이터"+vo2);
			System.out.println("세번째데이터"+vo4);
			System.out.println("네번째데이터"+vo6);
			
			
			if(Integer.parseInt(request.getParameter("compare"))==1) {
				itemVO voItem = dao.itemContent_item(item_num2);
				request.setAttribute("voItem", voItem);
				ingredientVO voIng =dao.itemContent_ingre(item_num2);
				request.setAttribute("voIng", voIng);
				System.out.println("비교 아이템1선택");
				System.out.println(voItem);
				System.out.println(voIng);
			}else if(Integer.parseInt(request.getParameter("compare"))==2) {
				itemVO voItem = dao.itemContent_item(item_num3);
				request.setAttribute("voItem", voItem);
				ingredientVO voIng =dao.itemContent_ingre(item_num3);
				request.setAttribute("voIng", voIng);
				System.out.println("비교 아이템2선택");
				System.out.println(voItem);
				System.out.println(voIng);
			}else if(Integer.parseInt(request.getParameter("compare"))==3) {
				itemVO voItem = dao.itemContent_item(item_num4);
				request.setAttribute("voItem", voItem);
				ingredientVO voIng =dao.itemContent_ingre(item_num4);
				request.setAttribute("voIng", voIng);
				System.out.println("비교 아이템3선택");
				System.out.println(voItem);
				System.out.println(voIng);
			}else {
			}
			System.out.println("다시받아오기 성공");
		}else {
			itemVO vo2=dao.itemContent_item(suggest[0]);
			request.setAttribute("vo2", vo2);
			ingredientVO vo3=dao.itemContent_ingre(suggest[0]);
			request.setAttribute("vo3", vo3);
			itemVO voItem = dao.itemContent_item(suggest[0]);
			request.setAttribute("voItem", voItem);
			ingredientVO voIng = dao.itemContent_ingre(suggest[0]);
			request.setAttribute("voIng", voIng);
			itemVO vo4=dao.itemContent_item(suggest[1]);
			request.setAttribute("vo4", vo4);
			ingredientVO vo5=dao.itemContent_ingre(suggest[1]);
			request.setAttribute("vo5", vo5);
			itemVO vo6=dao.itemContent_item(suggest[2]);
			request.setAttribute("vo6", vo6);
			System.out.println("랜덤 밀키트 정보 가져오기  : "+ vo6.getItem_name());
			ingredientVO vo7=dao.itemContent_ingre(suggest[2]);
			request.setAttribute("vo7", vo7);
			
			System.out.println("원 아이템 번호"+item_num+" 처음 받아오기 성공");
		}
		
		
		HttpSession session = request.getSession();
		UserVO user=(UserVO)session.getAttribute("succ");
		
		if(user!=null) {
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
		}
		return "itemContent";
	}
}
