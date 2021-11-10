package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.model.UserVO;
import kr.smhrd.model.mainDAO;
import kr.smhrd.model.sellerVO;

public class idcheckController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		
		String user_id=request.getParameter("user_id");
		
		
		mainDAO userid=new mainDAO();
		
	
		
		UserVO userids = new UserVO();
	
		userids.setUser_id(user_id);
		UserVO vo4=userid.id_check(userids);
		String ret = "data:no";
		if(vo4==null) {
			ret = "data:yes";
		}
		
		return ret;
		
	}

}
