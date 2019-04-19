package service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.RoomDao;
import utile.Roomid;
//房间
public class RoomService {
	private RoomDao mapper;
	public RoomService() {
		String resource = "mybatis-confjg.xml";
		SqlSession sqlSession = null;
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			sqlSession = factory.openSession(true);
			mapper = sqlSession.getMapper(RoomDao.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<Roomid> selectByType(String type){
		List<Roomid> list = mapper.selectByType(type);
		return list;
	}
	
	public static void main(String[] args) {
		RoomService rs = new RoomService();
		List<Roomid> list = rs.selectByType("标准间");
		System.out.println(list);
	}
}
