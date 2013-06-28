import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.PrintWriter;
import java.io.IOException;

import java.sql.*;

@WebServlet(name="user_info_modify"
	, urlPatterns={"/user_info_modify"})
public class UserInfoModifyServ extends HttpServlet
{
	private void addElements(String[] strArr, Set set){
		for(int i=0;i<strArr.length;i++){
			set.add(strArr[i]);
		}
	}
	//��Ӧ�ͻ�������ķ���
	public void service(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,java.io.IOException
	{
		String errMsg = "";
		//Servlet�����������Ӧ���ͻ��ˣ���˱��뽫����ת��
		RequestDispatcher rd;
		//��ȡ�������
		request.setCharacterEncoding("GBK");//����request.getParameter���ĳ�������
		HttpSession session = request.getSession(true);
		
		String user_id=(String)session.getAttribute("user_id");
		
		String req_lstGender = request.getParameter("lstGender");
		String req_selYear = request.getParameter("selYear");
		String req_selMonth=request.getParameter("selMonth");
		String req_selDay=request.getParameter("selDay");
		String req_selSchool=request.getParameter("selSchool");
		String req_selCollege=request.getParameter("selCollege");
		String req_selSpecialty=request.getParameter("selSpecialty");
		String req_lstDegree=request.getParameter("lstDegree");
		String req_lstVocation=request.getParameter("lstVocation");
		
		String[] pre_IsGoodAt=request.getParameterValues("pre_is_good_at");
		String[] after_IsGoodAt=request.getParameterValues("after_is_good_at");
		
		String[] pre_IsFocusOn=request.getParameterValues("pre_is_focus_on");
		String[] after_IsFocusOn=request.getParameterValues("after_is_focus_on");
		
		//�޸�ǰ���޸ĺ���ó���
		Set<String> preSet_IsGoodAt=new HashSet<String>();
		Set<String> afterSet_IsGoodAt=new HashSet<String>();
		
		//�޸�ǰ���޸ĺ�Ĺ�ע��
		Set<String> preSet_IsFocusOn=new HashSet<String>();
		Set<String> afterSet_IsFocusOn=new HashSet<String>();
		
		//����Ӻ�ɾ�����ó��㼯��
		Set<String> addSet_IsGoodAt=new HashSet<String>();
		Set<String> delSet_IsGoodAt=new HashSet<String>();
		
		//����Ӻ�ɾ���Ĺ�ע�㼯��
		Set<String> addSet_IsFocusOn=new HashSet<String>();
		Set<String> delSet_IsFocusOn=new HashSet<String>();
		
		if(pre_IsGoodAt!=null)
			addElements(pre_IsGoodAt, preSet_IsGoodAt);
		if(after_IsGoodAt!=null)
			addElements(after_IsGoodAt, afterSet_IsGoodAt);
		if(pre_IsFocusOn!=null)
			addElements(pre_IsFocusOn, preSet_IsFocusOn);
		if(after_IsFocusOn!=null)
			addElements(after_IsFocusOn, afterSet_IsFocusOn);
		
		try
		{
			//Servlet��������ִ���κε�ҵ���߼�����������JavaBean�����û�����
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
				"jdbc:mysql://localhost:3306/cradle_db","root","138781");
			if(req_lstGender!=null)
				dd.modify("update user set gender=? where user_id=?", req_lstGender,user_id);
			if(req_selYear!="��ѡ��" && req_selMonth!="��ѡ��" && req_selDay!="��ѡ��"){
				String temp=req_selYear+"-"+req_selMonth+"-"+req_selDay;
				dd.modify("update user set birthday=? where user_id=?", temp,user_id);
			}
			if(req_selSchool!="��ѡ��")
				dd.modify("update user set school=? where user_id=?", req_selSchool,user_id);
			if(req_selCollege!="��ѡ��")
				dd.modify("update user set college=? where user_id=?", req_selCollege,user_id);
			if(req_selSpecialty!="��ѡ��")
				dd.modify("update user set specialty=? where user_id=?", req_selSpecialty,user_id);
			if(req_lstDegree!="��ѡ��")
				dd.modify("update user set edu_level=? where user_id=?", req_lstDegree,user_id);
			if(req_lstVocation!="��ѡ��")
				dd.modify("update user set profession=? where user_id=?", req_lstVocation,user_id);
			
			Iterator<String> itr;
			//*******after-pre�����ڵ�Ԫ��--->�����ݿ������*******
			//*******pre-after�����ڵ�Ԫ��--->�����ݿ���ɾ��*******
			//---�ó������ݿ����---
			afterSet_IsGoodAt.removeAll(preSet_IsGoodAt);
			itr=afterSet_IsGoodAt.iterator();
			while(itr.hasNext()){
				dd.modify("INSERT INTO good_at_list VALUES(?,?)", user_id,(String)itr.next());
			}
			if(after_IsGoodAt!=null)
				addElements(after_IsGoodAt, afterSet_IsGoodAt);
			
			preSet_IsGoodAt.removeAll(afterSet_IsGoodAt);
			itr=preSet_IsGoodAt.iterator();
			while(itr.hasNext()){
				dd.modify("DELETE FROM good_at_list WHERE user_id=? AND good_at=?", user_id,(String)itr.next());
			}
			//---�ó������ݿ����---
			
			//---��ע�����ݿ����---
			afterSet_IsFocusOn.removeAll(preSet_IsFocusOn);
			itr=afterSet_IsFocusOn.iterator();
			while(itr.hasNext()){
				dd.modify("INSERT INTO focus_point_list VALUES(?,?)", user_id,(String)itr.next());
			}
			if(after_IsFocusOn!=null)
				addElements(after_IsFocusOn, afterSet_IsFocusOn);
			
			preSet_IsFocusOn.removeAll(afterSet_IsFocusOn);
			itr=preSet_IsFocusOn.iterator();
			while(itr.hasNext()){
				dd.modify("DELETE FROM focus_point_list WHERE user_id=? AND focus_point=?", user_id,(String)itr.next());
			}
			//---��ע�����ݿ����---
			
			
			
			
			
			dd.closeConn();
			
			//��ȡת������
			rd = request.getRequestDispatcher("/user_center");
			//ת������
			rd.forward(request,response);
			
		}
		catch (Exception e)
		{
			e.printStackTrace();			
		}
	}
}
