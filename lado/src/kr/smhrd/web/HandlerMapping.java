package kr.smhrd.web;

import java.util.HashMap;

import kr.smhrd.controller.Controller;
import kr.smhrd.controller.cartInsertController;
import kr.smhrd.controller.cartViewController;
import kr.smhrd.controller.itemContentController;
import kr.smhrd.controller.itemListController;
import kr.smhrd.controller.itemSearchController;
import kr.smhrd.controller.mainPageController;
import kr.smhrd.controller.signUpController;
import kr.smhrd.controller.userInsertController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String, Controller>();
		mappings.put("/itemList.do", new itemListController());
		mappings.put("/itemContent.do", new itemContentController());
		mappings.put("/mainPage.do", new mainPageController());
		mappings.put("/signUp.do", new signUpController());
		mappings.put("/userInsert.do", new userInsertController());
		mappings.put("/itemSearch.do", new itemSearchController());
		mappings.put("/cartView.do", new cartViewController());
		mappings.put("/cartInsert.do", new cartInsertController());

	}
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
