package kr.smhrd.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class mainDAO {
	private static SqlSessionFactory sqlSessionFactory;
	
	// 초기화 블럭(클래스가 실행되면 무조건 실행되는 메소드) : DB연결
		static {
			try {
				String resource = "kr/smhrd/mybatis/config.xml";
				InputStream inputStream=Resources.getResourceAsStream(resource);
				sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		public  List<itemVO> itemList(){
			SqlSession session=sqlSessionFactory.openSession();
			List<itemVO> list=session.selectList("itemList");
			session.close();
			return list;
		}
		
		public  List<itemVO> itemSearch(String item_search){
			System.out.println("세션실행");
			SqlSession session=sqlSessionFactory.openSession();
			List<itemVO> itemSearch_list=session.selectList("itemSearch", item_search);
			session.close();
			return itemSearch_list;
		}
		
		public itemVO itemContent_item(int item_num) {
			SqlSession session=sqlSessionFactory.openSession();
			itemVO vo= session.selectOne("itemContent_item", item_num);
			session.close();  
			return vo;
		}
		
		public ingredientVO itemContent_ingre(int item_num) {
			SqlSession session=sqlSessionFactory.openSession();
			ingredientVO vo1= session.selectOne("itemContent_ingre", item_num);
			session.close();  
			return vo1;
		}
		
		
		
		public UserVO login_user(UserVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			vo=session.selectOne("login_user",vo);
			session.close();
			return vo;
		}
		
		
		public sellerVO login_seller(sellerVO vo2) {
			SqlSession session = sqlSessionFactory.openSession();
			vo2 = session.selectOne("login_seller", vo2);
			session.close();
			return vo2;
		}

		
		public UserVO id_check(UserVO vo2) {
			SqlSession session = sqlSessionFactory.openSession();
		UserVO vo3 = session.selectOne("id_check", vo2);
			session.close();
			return vo3;
		}
		
		public void sellerInsert(sellerVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.insert("sellerInsert", vo);
			session.commit(); //완료(저장)
			session.close();  //반납(커넥션을 반납해서 재활용하기 위함)
		}
		
		
		public void userInsert(UserVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.insert("userInsert", vo);
			session.commit(); //완료(저장)
			session.close();  //반납(커넥션을 반납해서 재활용하기 위함)
		}
		
	
		public sellerVO sellerid_check(sellerVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
		sellerVO vo1 = session.selectOne("sellerid_check", vo);
			session.close();
			return vo1;
		}
		
		
		
}
