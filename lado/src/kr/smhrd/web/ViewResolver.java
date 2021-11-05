package kr.smhrd.web;

public class ViewResolver {
	
	private ViewResolver() {   } // 디폴트생성자
	
    // "boardList"->"/WEB-INF/board/boardList.jsp"	
	public static String makeViewUrl(String view) {
		//Math m=new Math(); // private Math(){   }
		//System sys=new System(); // private System() {    }
		//System.
		return "/WEB-INF/web/"+view+".jsp";
	}	
}

