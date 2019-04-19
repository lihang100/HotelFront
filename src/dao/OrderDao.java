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
}
