package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBjob;

@WebServlet(urlPatterns = { "/MainServlet" }, initParams = {
@WebInitParam(name = "jdbcDriver", value = "com.mysql.jdbc.Driver"),
@WebInitParam(name = "dbUrl", value = "jdbc:mysql://localhost:3306/test?useUnicode=true&amp;characterEncoding=UTF-8"),
@WebInitParam(name = "dbUser", value = "root"),
@WebInitParam(name = "dbPass", value = "webclass") })
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DBjob userDataMan;

	public void init(ServletConfig config) throws ServletException {
		super.init();
		userDataMan = new DBjob();
		userDataMan.setDbUrl(config.getInitParameter("dbUrl"));
		userDataMan.setDbUser(config.getInitParameter("dbUser"));
		userDataMan.setDbPass(config.getInitParameter("dbPass"));
		try {
			Class.forName(config.getInitParameter("jdbcDriver"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public MainServlet() {
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
		String user_code = "1";
		
		ArrayList<String> test=userDataMan.favorite(user_code);
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>  </title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<br></br>good!!");
		out.println("</body>");
		out.println("</html>");		
		out.close();
	}
}
