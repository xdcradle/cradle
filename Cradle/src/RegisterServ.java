import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.PrintWriter;
import java.io.IOException;

import java.sql.*;

@WebServlet(name="register"
	, urlPatterns={"/register"})
public class RegisterServ extends HttpServlet
{
	//响应客户端请求的方法
	public void service(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,java.io.IOException
	{
		String errMsg = "";
		//Servlet本身并不输出响应到客户端，因此必须将请求转发
		RequestDispatcher rd;
		//获取请求参数
		request.setCharacterEncoding("GBK");//避免request.getParameter中文出现乱码
		String req_user_id = request.getParameter("user_id");
		String req_pwd = request.getParameter("password");
		String req_email=request.getParameter("email");
		String req_true_name=request.getParameter("true_name");
		try
		{
			//Servlet本身，并不执行任何的业务逻辑处理，它调用JavaBean处理用户请求
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
				"jdbc:mysql://localhost:3306/cradle_db","root","138781");
			//查询结果集
			ResultSet rs = dd.query("select user_id from user where user_id = ?", req_user_id);
			
			//如果查询的结果集里有超过一条记录，则出现用户名重复
			if (rs.next())
			{
				//用户名已存在，不能以此用户名注册
				errMsg += "用户名已存在，不能使用该用户名注册";
			}
			else
			{
				//用户名不存在，可以使用此用户名注册
				dd.modify("INSERT INTO user(user_id,password,email,true_name) VALUES(?,?,?,?)", req_user_id,req_pwd,req_email,req_true_name);
				//dd.closeConn();
				//设置session属性，跟踪用户会话状态
				request.setAttribute("user_id" , req_user_id);
				//获取转发对象
				rd = request.getRequestDispatcher("/reg_success.jsp");
				//转发请求
				rd.forward(request,response);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();			
		}
		//如果出错，转发到register.jsp，重新注册
		if (errMsg != null && !errMsg.equals(""))
		{
			request.setAttribute("err" , errMsg);
			rd = request.getRequestDispatcher("/register.jsp");	
			rd.forward(request,response);
		}
		
	}
}
