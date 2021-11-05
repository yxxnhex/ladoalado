package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public String requestHandler(HttpServletRequest request, 
			                     HttpServletResponse response) 
                                    throws ServletException, IOException;
}

// 주석처리해서 깃허브 올라가나 실험
