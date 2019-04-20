package servlet;

/*
 * 用户查询自己的订单
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;

import pojo.Order;
import pojo.User;
import service.OrderService;


@WebServlet("/ShowOrderServlet")
public class ShowOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		int p = Integer.parseInt(request.getParameter("page"));
		int l = Integer.parseInt(request.getParameter("limit"));
		
//		User user = (User)request.getSession().getAttribute("user");
//		int uid = user.getUid();
		
		OrderService us =new OrderService();
		List<Order> orderList = us.selectByUid(2,p,l);
		int count = us.selectByUid(2, 0, 0).size();
		
		String ss = JSONObject.toJSONStringWithDateFormat(orderList, "yyyy-MM-dd");
		String s = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+ss+"}";
		PrintWriter out = response.getWriter();
		out.print(s);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
