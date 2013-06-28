import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.PrintWriter;
import java.io.IOException;

import java.sql.*;

@WebServlet(name = "user_center", urlPatterns = { "/user_center" })
public class UserCenterServ extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		RequestDispatcher rd;
		HttpSession session = request.getSession(true);
		try{
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
					"jdbc:mysql://localhost:3306/cradle_db", "root", "138781");
			ResultSet rsUserInfo = dd.query(
					"select * from user where user_id = ?", session.getAttribute("user_id").toString());
			ResultSet rsGoodAt=dd.query(
					"select good_at from good_at_list where user_id = ?", session.getAttribute("user_id").toString());
			ResultSet rsFocusOn=dd.query(
					"select focus_point from focus_point_list where user_id = ?", session.getAttribute("user_id").toString());
			String resGoodAt="";
			String resFocusOn="";
			while(rsGoodAt.next()) {
				resGoodAt+=rsGoodAt.getString(1)+"&&";
			}
			while(rsFocusOn.next()){
				resFocusOn+=rsFocusOn.getString(1)+"&&";
			}
			if(rsUserInfo.next()){
				request.setAttribute("gender", rsUserInfo.getString("gender"));
				request.setAttribute("birthday", rsUserInfo.getString("birthday"));
				request.setAttribute("school", rsUserInfo.getString("school"));
				request.setAttribute("college", rsUserInfo.getString("college"));
				request.setAttribute("specialty", rsUserInfo.getString("specialty"));
				request.setAttribute("edu_level", rsUserInfo.getString("edu_level"));
				request.setAttribute("profession", rsUserInfo.getString("profession"));
				request.setAttribute("good_at", resGoodAt);
				request.setAttribute("focus_point", resFocusOn);
				// 获取转发对象
				rd = request.getRequestDispatcher("/user_center.jsp");
				// 转发请求
				rd.forward(request, response);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
