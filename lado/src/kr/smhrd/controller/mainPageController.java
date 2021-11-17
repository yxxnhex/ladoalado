package kr.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;


public class mainPageController implements Controller {
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		mainDAO dao=new mainDAO();
		
		
		List<itemVO> newlist=dao.newItemList();
		ArrayList<itemVO> newItemList= new ArrayList<itemVO>();
		
		
		itemVO vo=newlist.get(0);
		newItemList.add(vo);
		itemVO vo1=newlist.get(1);
		newItemList.add(vo1);
		itemVO vo2=newlist.get(2);
		newItemList.add(vo2);
		itemVO vo3=newlist.get(3);
		newItemList.add(vo3);
		itemVO vo4=newlist.get(4);
		newItemList.add(vo4);
		itemVO vo5=newlist.get(5);
		newItemList.add(vo5);
		itemVO vo6=newlist.get(6);
		newItemList.add(vo6);
		itemVO vo7=newlist.get(7);
		newItemList.add(vo7);
		itemVO vo8=newlist.get(8);
		newItemList.add(vo8);
		itemVO vo9=newlist.get(9);
		newItemList.add(vo9);
		itemVO vo10=newlist.get(10);
		newItemList.add(vo10);
		itemVO vo11=newlist.get(11);
		newItemList.add(vo11);
		
		
		request.setAttribute("newItemList", newItemList);
		
		
		
		Random rd=new Random();
		List<itemVO> list=dao.itemList();

		
		int suggest[] = new int[12];
		
		for(int i=0; i<suggest.length; i++) {
			suggest[i] = rd.nextInt(list.size())+1;
			
			for(int j=0; j<i; j++) {
				if(suggest[i] == suggest[j]) {
					i--;
				}
			}
		}
		
		ArrayList<itemVO> suggestList= new ArrayList<itemVO>();
		
		itemVO sg=dao.itemContent_item(suggest[0]);
		suggestList.add(sg);
		itemVO sg1=dao.itemContent_item(suggest[1]);
		suggestList.add(sg1);
		itemVO sg2=dao.itemContent_item(suggest[2]);
		suggestList.add(sg2);
		itemVO sg3=dao.itemContent_item(suggest[3]);
		suggestList.add(sg3);
		itemVO sg4=dao.itemContent_item(suggest[4]);
		suggestList.add(sg4);
		itemVO sg5=dao.itemContent_item(suggest[5]);
		suggestList.add(sg5);
		itemVO sg6=dao.itemContent_item(suggest[6]);
		suggestList.add(sg6);
		itemVO sg7=dao.itemContent_item(suggest[7]);
		suggestList.add(sg7);
		itemVO sg8=dao.itemContent_item(suggest[8]);
		suggestList.add(sg8);
		itemVO sg9=dao.itemContent_item(suggest[9]);
		suggestList.add(sg9);
		itemVO sg10=dao.itemContent_item(suggest[10]);
		suggestList.add(sg10);
		itemVO sg11=dao.itemContent_item(suggest[11]);
		suggestList.add(sg11);
		
		request.setAttribute("suggestList", suggestList);
		
		return "mainPage";
	}

}
