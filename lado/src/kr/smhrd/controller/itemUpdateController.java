package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class itemUpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String savePath = request.getRealPath("/img");
		int sizeLimit = 1024*1024*15;
		
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		String item_name=multi.getParameter("item_name");
		String item_company=multi.getParameter("item_company");
		int item_price=Integer.parseInt(multi.getParameter("item_price"));
		int item_serve=Integer.parseInt(multi.getParameter("item_serve"));
		int item_time=Integer.parseInt(multi.getParameter("item_time"));
		int item_gram=Integer.parseInt(multi.getParameter("item_gram"));
		int seller_num=Integer.parseInt(multi.getParameter("seller_num"));
		String fileName=multi.getFilesystemName("file");
		String m_fileFullPath = "img" + File.separator + fileName;
		
		
		
		
		
		
		return null;
	}

}
