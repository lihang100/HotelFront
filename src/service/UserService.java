package service;

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

public class UserService {
	private static UserMapper mapper;
	static{
		String resource = "mybatis-confjg.xml";
		String uname=null;
		
		List<User> list = new ArrayList<User>();
		SqlSession sqlSession = null;
		try {
			
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);			
			sqlSession = factory.openSession();			
			mapper = sqlSession.getMapper(UserMapper.class);		
				/*
				 * User user = mapper.selectById(2); uname = user.getUname();
				 */
		} catch (IOException e) {
		
			e.printStackTrace();
		}
	}
	//id≤È—Ø∂‘œÛ
	public User selectById(int id) {
		
		return mapper.selectById(id);
	}
	
	

}
