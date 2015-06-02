package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBjob;


@WebServlet(urlPatterns = { "/UserServlet" }, initParams = {
@WebInitParam(name = "jdbcDriver", value = "com.mysql.jdbc.Driver"),
@WebInitParam(name = "dbUrl", value = "jdbc:mysql://localhost:3306/test?useUnicode=true&amp;characterEncoding=UTF-8"),
@WebInitParam(name = "dbUser", value = "root"),
@WebInitParam(name = "dbPass", value = "webclass") })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DBjob userDataMan;

	public void init(ServletConfig config) throws ServletException {
		super.init();
		userDataMan = new DBjob();
		try {
			Class.forName(config.getInitParameter("jdbcDriver"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public UserServlet() {
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
		try {
			userDataMan.insert_user("test","tset");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("<html>");
		out.println("<head>");
		out.println("<title>  </title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
