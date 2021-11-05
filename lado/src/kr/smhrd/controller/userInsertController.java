package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.UserVO;
import kr.smhrd.model.mainDAO;

public class userInsertController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String user_id=request.getParameter("user_id");
		String user_pwd=request.getParameter("user_pwd");
		String user_phone=request.getParameter("user_phone");
		
		UserVO vo=new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pwd(user_pwd);
		vo.setUser_phone(user_phone);
		
		System.out.println(user_id);
		System.out.println(user_pwd);
		System.out.println(user_phone);
		
		mainDAO dao=new mainDAO();
		dao.userInsert(vo);
		
		
		return "redirect:/mainPage.do";
	}

}
