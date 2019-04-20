package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Order;
import pojo.User;
import service.OrderService;
import service.RoomService;
import utile.DoDate;
import utile.OrderTime;
import utile.Roomid;


@WebServlet("/OrderingServlet")
public class OrderingServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String result = "失败";
		
		String type = request.getParameter("type");
		String starttime = request.getParameter("starttime");
		String endtime = request.getParameter("endtime");
//		System.out.println(starttime);
//		System.out.println(endtime);
		Date inday = DoDate.getDate(starttime);
		Date outday = DoDate.getDate(endtime);
		//取出会话中的用户对象
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		//用来放可以预定的房间号
		List<Integer> rids = new ArrayList<>();
		
		OrderService os = new OrderService();
		RoomService rs = new RoomService();
		//通过房间类型得到所有这个类型的房间号
		List<Roomid> list = rs.selectByType(type);
		for(Roomid roomid : list) {
			int rid = roomid.getRid();
			//通过房间号找到这个号现在已被预订的订单的开始离开时间
			List<OrderTime> otlist = os.selectByRid(rid);
			if(otlist.size()==0) {
				rids.add(rid);
			}else {
				for(OrderTime orderTime : otlist) {
					//检查每个开始离开时间和要预定的时间的冲突
					boolean b = DoDate.checkDate(orderTime.getStarttime(), orderTime.getEndtime(), inday, outday);
					//不冲突就把这个可用的房间号存入之前设置好的集合中
					if(b) {
						System.out.println(rid);
						rids.add(rid);
					}
				}
			}
		}
		System.out.println(rids.toString());
		//如果等于0说明没有房间可以预定了
		if(rids.size()==0) {
			System.out.println("没有房间");
			result = "失败";
		}else {//可以预定
			System.out.println("有房间");
			double random = Math.random();
			int i = (int)(random*rids.size());//从可预订的房间号中随机一个
			//房间号
			int rid = rids.get(i);
			
			int price = list.get(0).getPrice();//得到单价
			//计算天数
			int days = DoDate.numOfDay(inday, outday);
			//总价
			int totlePrice = price*days;
			//状态
			String status = "已预定";
			//预定日期
			Date booktime = new Date();
			//用户id
			int uid = user.getUid();
			//有了订单对象
			Order order = new Order(0, rid, uid, 1, inday, outday, totlePrice, status, booktime, "");
			//添加
			os.add(order);
			result = "成功";
		}
		
		String ss = "{\"result\":\""+result+"\"}";
		PrintWriter out = response.getWriter();
		out.print(ss);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	//改变日期字符串的格式:02/01/1999改为1999-02-01
	public String changeDateStr(String time) {
		String year = time.substring(6);
		String month = time.substring(0, 2);
		String day = time.substring(3, 5);
		
		return year+"-"+month+"-"+day;
	}
	
}
