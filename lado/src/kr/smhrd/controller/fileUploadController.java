package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.model.boardVO;
import kr.smhrd.model.mainDAO;


public class fileUploadController implements Controller {

//	private static final String CHARSET = "utf-8";
	


	
//	private static final String ATTACHES_DIR = "C:\\Users\\smhrd\\git\\repository4\\lado\\WebContent\\WEB-INF\\img";
//	private static final int LIMIT_SIZE_BYTES = 1024*1024;
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String savePath = request.getRealPath("/img");
		int sizeLimit = 1024*1024*15;
		
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		String m_name=multi.getParameter("file_name");
		String fileName=multi.getFilesystemName("file");
		String m_fileFullPath = "img" + File.separator + fileName;
		
		boardVO vo = new boardVO();
		
		vo.setFile_name(m_name);
		vo.setFile_path(m_fileFullPath);
		vo.setFilename(fileName);
		
		mainDAO dao = new mainDAO();
		dao.testInsert(vo);
		
		
		
//		response.setContentType("text/html; charset=UTF-8");
//		
//        request.setCharacterEncoding("utf-8");
//
//        PrintWriter out = response.getWriter();
//
//        File attachesDir = new File(ATTACHES_DIR);
//        
//        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory(); // 업로드된 파일을 저장할 저장소와 관련된 클래스 (DiskFileItemFactory)
//        fileItemFactory.setRepository(attachesDir); // 업로드된 파일을 저장할 위치를 File객체로 지정하는 메소드
//        fileItemFactory.setSizeThreshold(LIMIT_SIZE_BYTES); // 저장소에 임시파일을 생성할 한계 크기를 byte 단위로 지정하는 메소드
//        ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory); // http 요청에 대한 httpServletRequest 객체로부터 multipart/form-data 형식으로 넘어온 http body 부분을 다루기 쉽게 변환해주는 클래스
//        
//        try {
//			List<FileItem> items = fileUpload.parseRequest(request); //FileItem 이라는 형식으로 변환해주는 메소드
//			// FileItem : 사용자가 업로드한 File 데이터나 사용자가 input text에 입력한 일반 요청 데이터에 대한 객체
//			//            isFormField() 메소드의 리턴값이 true이면 text같은 일반 입력 데이터이고,
//			//            false이면 파일데이터이다. 즉, 리턴값이 false일 경우에만 파일이 업로드된 것으로 인지하여 처리하면 됨.
//			for(FileItem item : items) {
//				if(item.isFormField()) { // isFormField() : input태그에 입력된 데이터가 text 등의 단순한 입력값이면 true, 첨부파일 등의 바이너리데이터이면 false를 반환
//					System.out.printf("파라미터 명 : %s, 파라미터 값 : %s \n", item.getFieldName(), item.getString("utf-8"));
//					// getFieldName() : 데이터의 name(input 태그에 설정된 name값)을 리턴
//					// getString(final String charset) : 첨부파일이 아닌 단순한 form데이터일 경우 입력된 값을 charset에 따라 인코딩하여 리턴
//				}else {
//					System.out.printf("파라미터 명 : %s, 파일 명 : %s, 파일 크기 : %s bytes \n", item.getFieldName(), item.getName(), item.getSize());
//					// getName() : 데이터가 첨부파일일 경우 파일명 또는 파일 경로를 리턴
//					// getSize() : 데이터의 크기(파일의 크기)를 byte 단위로 리턴
//					if(item.getSize()>0) {
//						String separator = File.separator; // File.separator : 운영체제별로 다른 파일경로 구분자를 담음(windows의 경우 \)
//						int index= item.getName().lastIndexOf(separator);
//						String fileName= item.getName().substring(index+1);
//						File uploadFile = new File(ATTACHES_DIR + separator + fileName);
//						
//						item.write(uploadFile);
//						// write(File file) throw Exception : 현재 데이터가 첨부파일일 때 매겨변수로 넘겨준 file 객체의 경로로 출력(저장)
//					}
//				}
//			}
//			
//			
//        	out.println("<h1>파일 업로드 완료</h1>");
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//			out.println("<h1>파일 업로드 중 오류가 발생하였습니다.</h1>");
//		}
		
		
		
		return "redirect:/mainPage.do";
	}

}
