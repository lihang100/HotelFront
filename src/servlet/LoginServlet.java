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


@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 2L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String result = "错误";
		
		String uemail = request.getParameter("uemail");
		String password = request.getParameter("password");
		
		UserService us =new UserService();
		List<User> totlelist = us.selectAll();
		for(User u:totlelist) {
			if(u.getUemail().equals(uemail) && u.getUpassword().equals(password)) {
				result = "正确";
				request.getSession().setAttribute("user", u);
				break;
			}
		}
		String ss = "{\"result\":\""+result+"\"}";
		PrintWriter out = response.getWriter();
		out.print(ss);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
