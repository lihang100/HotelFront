package service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.OrderDao;
import pojo.Order;
import utile.OrderTime;
//房间
public class OrderService {
	private OrderDao mapper;
	public OrderService() {
		String resource = "mybatis-confjg.xml";
		SqlSession sqlSession = null;
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
			sqlSession = factory.openSession(true);
			mapper = sqlSession.getMapper(OrderDao.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//根据房间号得到订单入住离开时间
	public List<OrderTime> selectByRid(int rid){
		return mapper.selectByRid(rid);
	}
	
	//添加订单
	public void add(Order order) {
		mapper.add(order);
	}
	
	//查询某个用户的订单
	public List<Order> selectByUid(int uid,int currentPage,int pageSize) {
		int index = (currentPage-1)*pageSize;
		
		return mapper.selectByUid(uid,index,pageSize);
	}
	//取消订单
	public void cancel(int oid) {
		mapper.update(oid);
	}
	
	public static void main(String[] args) {
		OrderService os = new OrderService();
//		List<OrderTime> list = os.selectByRid(101);
//		System.out.println(list);
//		List<Order> list = os.selectByUid(2,1,10);
//		System.out.println(list);
		os.cancel(1);
	}
}
