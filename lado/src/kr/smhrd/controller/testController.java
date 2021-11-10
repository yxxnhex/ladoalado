package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.boardVO;
import kr.smhrd.model.itemVO;
import kr.smhrd.model.mainDAO;

public class testController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		mainDAO dao=new mainDAO();
		List<boardVO> list=dao.testList();
		request.setAttribute("list", list);
		
		
		return "test";
	}

}
