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
import javax.servlet.http.HttpSession;

import DB.DBjob;


@WebServlet(urlPatterns = { "/userlist" }, initParams = {
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
		userDataMan.setDbUrl(config.getInitParameter("dbUrl"));
		userDataMan.setDbUser(config.getInitParameter("dbUser"));
		userDataMan.setDbPass(config.getInitParameter("dbPass"));
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
		HttpSession session = request.getSession(true);
		String query="SELECT user_code FROM User";
		String query2="SELECT password FROM User";
		String query3="SELECT user_code FROM User";
		String query4="SELECT user_code FROM UserCategories";
		String query5="SELECT category_code FROM UserCategories";
		String query6="SELECT category_name FROM Categories";
		String query7="SELECT category_id FROM Categories";
		String query8="SELECT feed_id FROM Feed";
		String query9="SELECT user_code FROM Feed";
		String query10="SELECT categories FROM Feed";
		String query11="SELECT generated_date FROM Feed";
		String query12="SELECT modified_date FROM Feed";
		String query13="SELECT content FROM Feed";
		String query14="INSERT INTO `User` (`user_e_mail`,`password`,`user_code`) VALUES (";
		String query15="INSERT INTO `UserCategories` (`user_code`,`category_code`)	VALUES(";
		String query16="INSERT INTO `Categories` (`category_name`,`category_id`)	VALUES(";
		String query17="INSERT INTO `Feed` (`feed_id`,`user_code`,`categories`,`generated_date`,`modified_date`,`content`)	VALUES(";
		String query18="INSERT INTO `FeedCategories` (`feed_id`,`category_code`)	VALUES(";
		
		String user = new String(userDataMan.String_query(query));
		String password = new String(userDataMan.String_query(query2));
		ArrayList<String> login_list = new ArrayList<String>();
		login_list=new ArrayList<String>(userDataMan.list_query(query));
		response.setContentType("text/html");
	
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>  </title>");
		out.println("</head>");
		out.println("<body>");
			out.println("<h1>" + user + "</h1>");
			out.println("<h1>" + password + "</h1>");
			out.println("<h1>" + login_list + "</h1>");
		out.println("<a href=\"index.html\">"
				+ "Click here to go back to index page " + "</a>");
		out.println("<br></br>new member come on!!");
		out.println("<form method='get' action='new_user'>"+"<input type='text' id='name' name='name'/>"
				+"<input type='submit' value='Newmember'/></form>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
