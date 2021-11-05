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
		
		public void userInsert(UserVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			session.insert("userInsert", vo);
			session.commit(); //완료(저장)
			session.close();  //반납(커넥션을 반납해서 재활용하기 위함)
		}
		
}
