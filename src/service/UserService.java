package service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.UserMapper;
import pojo.User;
import utile.DoDate;

public class UserService {
	private UserMapper mapper;
	public UserService() {
		String resource = "mybatis-confjg.xml";
		String uname = null;

		List<User> list = new ArrayList<User>();
		SqlSession sqlSession = null;
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			sqlSession = factory.openSession(true);
			mapper = sqlSession.getMapper(UserMapper.class);
			/*
			 * User user = mapper.selectById(2); uname = user.getUname();
			 */
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// id��ѯ����
	public User selectById(int id) {
		return mapper.selectById(id);
	}

	// �洢����
	public void updateUser(User user) {
		mapper.updateUser(user);
	}

	// 查询所有用户fu
	public List<User> selectAll() {
		return mapper.selectAll();
	}

	//添加用户fu
	public void addUser(User user) {
		mapper.addUser(user);
	}
	//改头像和用户名
	public void change(User user) {
		mapper.change(user);
	}
	// 测试fu
	public static void main(String[] args) {
		UserService u = new UserService();
		List<User> list = u.selectAll();
		System.out.println(list);
	}

}
