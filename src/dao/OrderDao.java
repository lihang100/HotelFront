package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Order;
import utile.OrderTime;

public interface OrderDao {
	//根据房间号得到订单入住离开时间
	public List<OrderTime> selectByRid(@Param("rid")int rid);
	
	//添加订单
	public void add(Order order);
	
	//通过uid查询
	public List<Order> selectByUid(@Param("uid")int uid,@Param("index")int index,@Param("pageSize")int pageSize);
	
	//用户取消订单
	public void update(@Param("oid")int oid);
}
