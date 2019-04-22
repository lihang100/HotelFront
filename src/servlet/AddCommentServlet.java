package servlet;

/*
 * 显示所有的评论
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;

import pojo.Comment;
import pojo.Order;
import pojo.User;
import service.CommentService;
import service.OrderService;
import utile.Page;


@WebServlet("/AddCommentServlet")
public class AddCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String content = request.getParameter("content");
		
		
		User user = (User)request.getSession().getAttribute("user");
		int uid = user.getUid();
		
		Date ctime = new Date();
		
		CommentService cs =new CommentService();
		cs.add(uid, content, ctime);
		
		//跳转
		
		//int count = page.getTotle();
		
//		String ss = JSONObject.toJSONStringWithDateFormat(list, "yyyy-MM-dd hh:mm:ss");
//		String s = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+ss+"}";
//		PrintWriter out = response.getWriter();
//		out.print(s);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
