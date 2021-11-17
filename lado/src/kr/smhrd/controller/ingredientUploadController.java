package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.ingredientVO;
import kr.smhrd.model.mainDAO;

public class ingredientUploadController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int item_kcal=Integer.parseInt(request.getParameter("item_kcal"));
		int item_nate=Integer.parseInt(request.getParameter("item_nate"));
		int item_carbo=Integer.parseInt(request.getParameter("item_carbo"));
		int item_sugar=Integer.parseInt(request.getParameter("item_sugar"));
		int item_fat=Integer.parseInt(request.getParameter("item_fat"));
		int item_sat=Integer.parseInt(request.getParameter("item_sat"));
		int item_col=Integer.parseInt(request.getParameter("item_col"));
		int item_protein=Integer.parseInt(request.getParameter("item_protein"));
		
		ingredientVO vo=new ingredientVO();
		vo.setItem_kcal(item_kcal);
		vo.setItem_nate(item_nate);
		vo.setItem_carbo(item_carbo);
		vo.setItem_sugar(item_sugar);
		vo.setItem_fat(item_fat);
		vo.setItem_sat(item_sat);
		vo.setItem_col(item_col);
		vo.setItem_protein(item_protein);
		
		mainDAO dao=new mainDAO();
		dao.ingredientInsert(vo);
		
		return "redirect:/mainPage.do";
	}

}
