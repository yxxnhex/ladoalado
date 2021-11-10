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
		String user_name=request.getParameter("user_name");
		String user_gender=request.getParameter("user_gender");
		int user_age=Integer.parseInt(request.getParameter("user_age"));
		
		UserVO vo=new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pwd(user_pwd);
		vo.setUser_name(user_name);
		vo.setUser_gender(user_gender);
		vo.setUser_age(user_age);
		
		
		mainDAO dao=new mainDAO();
		dao.userInsert(vo);
		
		return "redirect:/mainPage.do";
	}

}
