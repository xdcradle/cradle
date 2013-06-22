import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.PrintWriter;
import java.io.IOException;

import java.sql.*;

@WebServlet(name="login"
	, urlPatterns={"/login"})
public class LoginServlet extends HttpServlet
{
	//��Ӧ�ͻ�������ķ���
	public void service(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,java.io.IOException
	{
		String errMsg = "";
		//Servlet�����������Ӧ���ͻ��ˣ���˱��뽫����ת��
		RequestDispatcher rd;
		//��ȡ�������
		String user_id = request.getParameter("txtUsername");
		String pass = request.getParameter("txtPassword");
		try
		{
			//Servlet��������ִ���κε�ҵ���߼�����������JavaBean�����û�����
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
				"jdbc:mysql://localhost:3306/cradle_db","root","138781");
			//��ѯ�����
			ResultSet rs = dd.query("select password from user where user_id = ?", user_id);
			
			if (rs.next())
			{
				//�û���������ƥ��
				if (rs.getString("password").equals(pass))
				{
					dd.closeConn();
					//��ȡsession����
					HttpSession session = request.getSession(true);
					//����session���ԣ������û��Ự״̬
					session.setAttribute("user_id" , user_id);
					//��ȡת������
					rd = request.getRequestDispatcher("/index.jsp");
					//ת������
					rd.forward(request,response);
				}
				else
				{
					//�û��������벻ƥ��ʱ
					errMsg += "�����û������벻����,����������";
				}
			}
			else
			{
				//�û���������ʱ
				errMsg += "�����û���������,����ע��";
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();			
		}
		//�������ת�������µ�¼
		if (errMsg != null && !errMsg.equals(""))
		{
			rd = request.getRequestDispatcher("/login.jsp");		
			request.setAttribute("err" , errMsg);
			rd.forward(request,response);
		}
		
	}
}
