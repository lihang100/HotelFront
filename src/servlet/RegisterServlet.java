package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.User;
import service.UserService;


@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String result = "正确";
		
		String uname = request.getParameter("username");
		String upassword = request.getParameter("password");
		String uphone = request.getParameter("phone_number");
		String uemail = request.getParameter("email");
		String ugender = request.getParameter("sex");
		String uidentity = request.getParameter("ID_number");
		
		User user = new User();
		user.setUname(uname);
		user.setUpassword(upassword);
		user.setUphone(uphone);
		user.setUemail(uemail);
		user.setUgender(ugender);
		user.setUidentity(uidentity);
		
		UserService us =new UserService();
		us.addUser(user);
		
		String ss = "{\"result\":\""+result+"\"}";
		PrintWriter out = response.getWriter();
		out.print(ss);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
