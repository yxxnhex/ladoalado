package kr.smhrd.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CartDAO {
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
		
		public void cartInsert(cartVO vo) {
			SqlSession session=sqlSessionFactory.openSession();
			System.out.println("dao로 넘어오기");
			session.insert("cartInsert", vo);
			session.commit(); //완료(저장)
			session.close();  //반납(커넥션을 반납해서 재활용하기 위함)
		}
		
		public  List<cartViewVO> cartView(int user_num){
			SqlSession session=sqlSessionFactory.openSession();
			List<cartViewVO> list=session.selectList("cartView", user_num);
			session.close();
			return list;
		}
		
		public void cartDelete(cartVO vo) {
	         SqlSession session=sqlSessionFactory.openSession();
	         session.delete("cartDelete", vo);
	         session.commit(); 
	         session.close();
	      }
		
		public  List<cartVO> cartList(){
	         SqlSession session=sqlSessionFactory.openSession();
	         List<cartVO> list=session.selectList("cartList");
	         session.close();
	         return list;
	      }
	      
	      public void cartUpdate(cartVO vo) {
	         SqlSession session=sqlSessionFactory.openSession();
	         session.update("cartUpdate", vo);
	         session.commit(); //완료(저장)
	         session.close();  //반납(커넥션을 반납해서 재활용하기 위함)
	      }
	      
	      public void pay(int user_num) {
		         SqlSession session=sqlSessionFactory.openSession();
		         session.delete("pay", user_num);
		         session.commit(); 
		         session.close();
		      }
}
