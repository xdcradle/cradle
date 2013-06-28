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
	//��Ӧ�ͻ�������ķ���
	public void service(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,java.io.IOException
	{
		String errMsg = "";
		//Servlet�����������Ӧ���ͻ��ˣ���˱��뽫����ת��
		RequestDispatcher rd;
		//��ȡ�������
		request.setCharacterEncoding("GBK");//����request.getParameter���ĳ�������
		String req_user_id = request.getParameter("user_id");
		String req_pwd = request.getParameter("password");
		String req_email=request.getParameter("email");
		String req_true_name=request.getParameter("true_name");
		try
		{
			//Servlet��������ִ���κε�ҵ���߼�����������JavaBean�����û�����
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
				"jdbc:mysql://localhost:3306/cradle_db","root","138781");
			//��ѯ�����
			ResultSet rs = dd.query("select user_id from user where user_id = ?", req_user_id);
			
			//�����ѯ�Ľ�������г���һ����¼��������û����ظ�
			if (rs.next())
			{
				//�û����Ѵ��ڣ������Դ��û���ע��
				errMsg += "�û����Ѵ��ڣ�����ʹ�ø��û���ע��";
			}
			else
			{
				//�û��������ڣ�����ʹ�ô��û���ע��
				dd.modify("INSERT INTO user(user_id,password,email,true_name) VALUES(?,?,?,?)", req_user_id,req_pwd,req_email,req_true_name);
				//dd.closeConn();
				//����session���ԣ������û��Ự״̬
				request.setAttribute("user_id" , req_user_id);
				//��ȡת������
				rd = request.getRequestDispatcher("/reg_success.jsp");
				//ת������
				rd.forward(request,response);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();			
		}
		//�������ת����register.jsp������ע��
		if (errMsg != null && !errMsg.equals(""))
		{
			request.setAttribute("err" , errMsg);
			rd = request.getRequestDispatcher("/register.jsp");	
			rd.forward(request,response);
		}
		
	}
}
