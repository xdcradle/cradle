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
	//响应客户端请求的方法
	public void service(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,java.io.IOException
	{
		String errMsg = "";
		//Servlet本身并不输出响应到客户端，因此必须将请求转发
		RequestDispatcher rd;
		//获取请求参数
		request.setCharacterEncoding("GBK");//避免request.getParameter中文出现乱码
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
		
		//修改前和修改后的擅长点
		Set<String> preSet_IsGoodAt=new HashSet<String>();
		Set<String> afterSet_IsGoodAt=new HashSet<String>();
		
		//修改前和修改后的关注点
		Set<String> preSet_IsFocusOn=new HashSet<String>();
		Set<String> afterSet_IsFocusOn=new HashSet<String>();
		
		//待添加和删除的擅长点集合
		Set<String> addSet_IsGoodAt=new HashSet<String>();
		Set<String> delSet_IsGoodAt=new HashSet<String>();
		
		//待添加和删除的关注点集合
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
			//Servlet本身，并不执行任何的业务逻辑处理，它调用JavaBean处理用户请求
			DbDao dd = new DbDao("com.mysql.jdbc.Driver",
				"jdbc:mysql://localhost:3306/cradle_db","root","138781");
			if(req_lstGender!=null)
				dd.modify("update user set gender=? where user_id=?", req_lstGender,user_id);
			if(req_selYear!="请选择" && req_selMonth!="请选择" && req_selDay!="请选择"){
				String temp=req_selYear+"-"+req_selMonth+"-"+req_selDay;
				dd.modify("update user set birthday=? where user_id=?", temp,user_id);
			}
			if(req_selSchool!="请选择")
				dd.modify("update user set school=? where user_id=?", req_selSchool,user_id);
			if(req_selCollege!="请选择")
				dd.modify("update user set college=? where user_id=?", req_selCollege,user_id);
			if(req_selSpecialty!="请选择")
				dd.modify("update user set specialty=? where user_id=?", req_selSpecialty,user_id);
			if(req_lstDegree!="请选择")
				dd.modify("update user set edu_level=? where user_id=?", req_lstDegree,user_id);
			if(req_lstVocation!="请选择")
				dd.modify("update user set profession=? where user_id=?", req_lstVocation,user_id);
			
			Iterator<String> itr;
			//*******after-pre集合内的元素--->在数据库中添加*******
			//*******pre-after集合内的元素--->从数据库中删除*******
			//---擅长点数据库操作---
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
			//---擅长点数据库操作---
			
			//---关注点数据库操作---
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
			//---关注点数据库操作---
			
			
			
			
			
			dd.closeConn();
			
			//获取转发对象
			rd = request.getRequestDispatcher("/user_center");
			//转发请求
			rd.forward(request,response);
			
		}
		catch (Exception e)
		{
			e.printStackTrace();			
		}
	}
}
