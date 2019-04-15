package dao.user;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;



import dao.UserMapper;
import pojo.User;


class UserMapperTest {
	
	public static void main(String[] args) {
		String resource = "mybatis-confjg.xml";
		
		List<User> list = new ArrayList<User>();
		SqlSession sqlSession = null;
		try {
			
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);			
			sqlSession = factory.openSession();			
			UserMapper mapper = sqlSession.getMapper(UserMapper.class);		
			User user = mapper.selectById(5);
			System.out.println(user.toString());
			
			
		} catch (IOException e) {
		
			e.printStackTrace();
		}finally {
			
			sqlSession.close();
		}
		
	}

}
