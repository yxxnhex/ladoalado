package kr.smhrd.web;

import java.util.HashMap;

import kr.smhrd.controller.Controller;
import kr.smhrd.controller.SellersignUpController;
import kr.smhrd.controller.cartInsertController;
import kr.smhrd.controller.cartViewController;
import kr.smhrd.controller.idcheckController;
import kr.smhrd.controller.ingredientUploadController;
import kr.smhrd.controller.fileUploadController;
import kr.smhrd.controller.inputController;
import kr.smhrd.controller.inputIngredientController;
import kr.smhrd.controller.itemContentController;
import kr.smhrd.controller.itemListController;
import kr.smhrd.controller.itemSearchController;
import kr.smhrd.controller.loginController;
import kr.smhrd.controller.loginPageController;
import kr.smhrd.controller.logoutController;
import kr.smhrd.controller.mainPageController;
import kr.smhrd.controller.sellerInsertController;
import kr.smhrd.controller.selleridcheckController;
import kr.smhrd.controller.signUpController;
import kr.smhrd.controller.testController;
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
		mappings.put("/loginPage.do", new loginPageController());
		mappings.put("/login.do", new loginController());
		mappings.put("/logout.do", new logoutController());
		mappings.put("/idcheck.do", new idcheckController());
		mappings.put("/SellersignUp.do", new SellersignUpController());
		mappings.put("/sellerInsert.do", new sellerInsertController());
		mappings.put("/selleridcheck.do", new selleridcheckController());
		mappings.put("/input.do", new inputController());
		mappings.put("/inputIngredient.do", new inputIngredientController());
		mappings.put("/fileUpload.do", new fileUploadController());
		mappings.put("/test.do", new testController());
		mappings.put("/ingredientUpload.do", new ingredientUploadController());
		
		

	}
	
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
}
