package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.User;
import service.UserService;
import utile.DoDate;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		System.out.println("进去");
		int uid = Integer.parseInt(request.getParameter("uid"));
	
		String uname =" ";
		String utruename = request.getParameter("utruename");
		String ugender = request.getParameter("ugender");
		String upassword =" ";
		String uidentity = request.getParameter("uidentity");
		String uemail = request.getParameter("uemail");
		String uborn = request.getParameter("uborn");
		Date date = DoDate.getDate(uborn);
		String uphone = request.getParameter("uphone");
		String upicture = request.getParameter("upicture");
	

		
		UserService us = new UserService();
		 us.updateUser(new User(uid, uname, utruename, ugender, upassword, uidentity, uemail, date, uphone, upicture));
		//{"name":name,"id":id,"user":["uid":uid]}
		PrintWriter out = response.getWriter();
		String s ="{\"result\":\"正确\"}";
		System.out.println(s);
		System.out.println(uemail+" xxx"+uphone);
		out.print(s);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
