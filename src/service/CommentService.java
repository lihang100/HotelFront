package service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.CommentDao;
import dao.OrderDao;
import pojo.Comment;
import pojo.Order;
import utile.OrderTime;
import utile.Page;
//房间
public class CommentService {
	private CommentDao mapper;
	public CommentService() {
		String resource = "mybatis-confjg.xml";
		SqlSession sqlSession = null;
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			sqlSession = factory.openSession(true);
			mapper = sqlSession.getMapper(CommentDao.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//显示所有的评论
	public Page<Comment> show(int currentPage,int pageSize){
		int index = (currentPage-1)*pageSize;
		List<Comment> list = mapper.show(index, pageSize);
		
		int totle = mapper.show(0, 0).size();
		int totlePage = totle%pageSize==0?totle/pageSize:totle/pageSize+1;
		Page<Comment> page = new Page<Comment>(currentPage, totlePage, totle, pageSize, list);
		return page;
	}
	//添加
	public void add(int uid,String content,Date ctime) {
		mapper.add(uid, content, ctime);
	}
	public static void main(String[] args) {
		CommentService cs = new CommentService();
		//System.out.println(cs.show(1, 4));
		cs.add(19, "今天天气很好，旅游很不错，住到这个酒店很愉快，整个心情都很好呢，下次再来", new Date());
	}
}
