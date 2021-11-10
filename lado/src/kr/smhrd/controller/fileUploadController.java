package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;

public class fileUploadController implements Controller {

	private static final String CHARSET = "utf-8";
	private static final String ATTACHES_DIR = "C://attaches";
	private static final int LIMIT_SIZE_BYTES = 1024*1024;
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
        request.setCharacterEncoding(CHARSET);

        PrintWriter out = response.getWriter();

        File attachesDir = new File(ATTACHES_DIR);
		
		
		
		return null;
	}

}
