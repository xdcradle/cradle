<%@ page contentType="text/html; charset=GBK" language="java" import="java.util.*,java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/usr_ctr_template.dwt" codeOutsideHTMLIsLocked="false" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>摇篮网-Cradle-发现价值，孕育希望</title>
<!-- InstanceEndEditable -->
<link href="css/usr-center-style.css" rel="stylesheet" type="text/css" />
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
<%-- <%String id=(session.getAttribute("user_id")).toString(); %>
<%=id %> --%>
<%	
	String true_name=session.getAttribute("true_name").toString();
%>
<%
String gender=null;
String birthday=null;
String school=null;
String college=null;
String specialty=null;
String edu_level=null;
String profession=null;
String good_at=null;
String focus_point=null;

if(request.getAttribute("gender")!=null){
	gender=request.getAttribute("gender").toString();
}
if(request.getAttribute("birthday")!=null){
	birthday=request.getAttribute("birthday").toString(); 
}
if(request.getAttribute("school")!=null){
	school=request.getAttribute("school").toString(); 
}
if(request.getAttribute("college")!=null){
	college=request.getAttribute("college").toString(); 
}
if(request.getAttribute("specialty")!=null){
	specialty=request.getAttribute("specialty").toString(); 
}
if(request.getAttribute("edu_level")!=null){
	edu_level=request.getAttribute("edu_level").toString(); 
}
if(request.getAttribute("profession")!=null){
	profession=request.getAttribute("profession").toString(); 
}
if(request.getAttribute("good_at")!=null){	//request.getAttribute("good_at")实际的返回值为""
	good_at=request.getAttribute("good_at").toString(); 
}
if(request.getAttribute("focus_point")!=null){  //request.getAttribute("focus_point")实际的返回值为""
	focus_point=request.getAttribute("focus_point").toString(); 
}
String[] birthdayArr=null;
if(birthday!=null){
	birthdayArr=birthday.split("-");
}
String[] good_atArr=null;
if(good_at!=null){
	good_atArr=good_at.split("&&");
}
String[] focus_pointArr=null;
if(focus_point!=null){
	focus_pointArr=focus_point.split("&&");
}
%>
<%-- <%=gender%>
<%=birthday%>
<%=school%>
<%=college%>
<%=specialty%>
<%=edu_level%>
<%=profession%>
<%=good_at %> --%>
<div class="topbar-wrapper">
  <div class="topbar"> 
							<ul>
                            	<li><a href="#" nouserface="true"><%=true_name %></a></li>
								<li><a href="#" nouserface="true">我的摇篮</a></li>
								<li><a href="#">账号设置</a></li>
								<li><a href="#">查看消息</a></li>
                                <li><a href="login.jsp" >退出</a></li>
								<div class="clear"></div>
							</ul>
  </div>
</div>
<div class="bg-wrapper">
  <div class="main-container">
    <div class="header">
      <div class="header-left"> <a href="#"><img src="images/logo.png" width="160" height="71" alt="摇篮网logo" /></a> </div>
      <div class="header-right">
        <div class="searchbar-wrapper">
          <form method="get" target="_self" action="#">
              <span class="search-input-wrapper">
                <input id="kw" class="search-input" type="text" maxlength="100" name="wd" autocomplete="off" />
              </span>
              <span class="search-btn-wrapper"><input value="搜 索" id="search-btn" type="submit" /></span>
            <span class="option-wrapper">
              <input id="sp0" name="sp" type="radio" />
              <label for="sp0">用户</label>
              <input id="sp1" name="sp" type="radio" />
              <label for="sp1">团队</label>
              <input id="sp2" name="sp" type="radio" />
              <label for="sp2">项目</label>
              <input id="sp3" name="sp" type="radio" />
              <label for="sp3">擅长点</label>
              <input id="sp4" name="sp" type="radio" />
              <label for="sp4">关注点</label>
            </span>
          </form>
        </div>
      </div>
    </div>
    <div class="main">
      <div class="navi">
        <div class="navi-left"> </div>
        <ul>
          <li><a href="index.jsp">首页</a></li>
          <li><a href="user_center">个人中心</a></li>
          <li><a href="#">好友</a></li>
          <li><a href="#">摇篮应用</a></li>
        </ul>
        <div class="navi-right"> </div>
      </div>
      <div class="sidebar-left">
        <div class="user-avatar-wrapper"> <a class="avatar" href="#"><img src="images/user-avatar.jpg" width="50" height="50" /></a>
          <div class="user-info">
            <div class="user-name"> <a class="name" title="黄崛" href="#"><%=true_name %></a> </div>
          </div>
        </div>
        <div class="user-apps">
          <h3> <a class="more" ui-async="async" href="#">更多</a>我的应用 </h3>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="user_center"><img class="icon" src="images/app.png" width="16" height="16" />个人中心</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />我的团队</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />快速匹配</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />项目发布</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/add_app_icon.png" width="16" height="16" />添加应用</a> </div>
          </div>
        </div>
      </div>
      <!-- InstanceBeginEditable name="EditRegion3" -->
      <div class="content">
        <div class="location"> <span>当前位置：<a href="index.jsp">首页</a>-&gt;个人中心</span> </div>
        <div id="app_cnt2" style="position:relative;">
          <h2 class="panel_title">基本信息</h2>
          <form name="myform" method="post" action="user_info_modify" onsubmit="return chkform()" id="myform">
            <div>
              <input name="__VIEWSTATE" id="__VIEWSTATE" value="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" type="hidden"/>
            </div>
            <script type="text/javascript" src="/ajax/common.ashx"></script><script type="text/javascript" src="/ajax/ASP.PageClass,App_Web_ytcyy-5f.ashx?p=FFnUrCAY9ebzalXN_zt0mOPp-7n4RquGd6Jl87atn2c1"></script>
            <div id="Editbox" class="Editbox"> </div>
            <div id="EditboxCity" class="Editbox"> </div>
            <input id="province" name="province" value="" type="hidden"/>
            <input id="city" name="city" value="" type="hidden"/>
            <table id="tbl_baseInfo" style="margin:15px 0 0px 0;margin-left:20px" align="center" border="0" cellspacing="5px" width="90%">
              <tbody>
                
                <tr>
                  <td class="pl_l" align="right">真实姓名：</td>
                  <td class="pl_r"><span id="span_city"><%=true_name %></span></td>
                </tr>
                <tr>
                  <td align="right" width="100px">性别：</td>
                  <td><table id="lstGender" border="0">
                      <tbody>
                        <tr>
                          <td><span class="mr5">
                            <input id="lstGender_0" name="lstGender" value="男" type="radio"
                            	<%if(gender!=null&&gender.equals("男"))
                            		out.print("checked=\"checked\"");
                             	%>/>
                            <label for="lstGender_0">男</label>
                            </span></td>
                          <td><span class="mr5">
                            <input id="lstGender_1" name="lstGender" value="女" type="radio" 
                            	<%if(gender!=null&&gender.equals("女"))
                            		out.print("checked=\"checked\"");
                             	%>/>
                            <label for="lstGender_1">女</label>
                            </span></td>
                        </tr>
                      </tbody>
                    </table></td>
                </tr>
                <tr>
                  <td align="right">生日：</td>
                  <td class="pl_r pl_border">
                    <span class="jSelectDateBorder date" id="spanDate1">
                    <select class="date" id="selYear1" name="selYear">
                    	<%
                    		if(birthday==null){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print("<option value=\"请选择\">请选择</option>");
                    		}
                    		for(int i=2013;i>=1900;i--){
                    			if(birthday!=null&&i==Integer.parseInt(birthdayArr[0])){
                    				out.print(String.format(
                    					"<option selected=\"selected\" value=\"%d\">%d</option>", i,i));
                    			}
                    			else{
                    				out.print(String.format("<option value=\"%d\">%d</option>",i ,i ));
                    			}
                    		}
                    	%>
                    </select>
                    年
                    <select class="date" id="selMonth1" name="selMonth">
                    <%
                    		if(birthday==null){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print("<option value=\"请选择\">请选择</option>");
                    		}
                    		for(int i=1;i<=12;i++){
                    			if(birthday!=null&&i==Integer.parseInt(birthdayArr[1])){
                    				out.print(String.format(
                    					"<option selected=\"selected\" value=\"%d\">%d</option>", i,i));
                    			}
                    			else{
                    				out.print(String.format("<option value=\"%d\">%d</option>",i ,i ));
                    			}
                    		}
                    	%>
                    </select>
                    月
                    <select class="date" id="selDay1" name="selDay">
                    <%
                    		if(birthday==null){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print("<option value=\"请选择\">请选择</option>");
                    		}
                    		for(int i=1;i<=31;i++){
                    			if(birthday!=null&&i==Integer.parseInt(birthdayArr[2])){
                    				out.print(String.format(
                    					"<option selected=\"selected\" value=\"%d\">%d</option>", i,i));
                    			}
                    			else{
                    				out.print(String.format("<option value=\"%d\">%d</option>",i ,i ));
                    			}
                    		}
                    %>   
                    </select>
                    日</span> <span class="gray ml20">隐私设置</span>
                    <select name="lstBirthPrivacy" id="lstBirthPrivacy" class="ml10">
                      <option value="3">显示年月日</option>
                      <option value="2">显示月和日</option>
                      <option value="1">显示年</option>
                      <option selected="selected" value="0">不显示生日</option>
                    </select></td>
                </tr>
                <tr>
                  <td align="right">所在学校：</td>
                  <td class="pl_r pl_border">
                    <span class="jSelectDateBorder date" id="spanDate1">
                    <select class="date" id="selYear1" name="selSchool">
                    <%
                    	String[] schoolArr={"请选择","西安交通大学","西北工业大学","西安电子科技大学"};
                    	for(int i=0;i<schoolArr.length;i++){
                    		if(school!=null&&school.equals(schoolArr[i])){
                    			out.print(String.format("<option selected=\"selected\" value=\"%s\">%s</option>",school ,school ));
                    		}
                    		else if(schoolArr[i].equals("请选择")){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print(String.format("<option value=\"%s\">%s</option>",schoolArr[i] ,schoolArr[i] ));
                    		}
                    	}
                    %>
                    </select>
                    </span></td>
                </tr>
                <tr>
                  <td align="right">所在学院：</td>
                  <td class="pl_r pl_border">
                    <span class="jSelectDateBorder date" id="spanDate1">
                    <select class="date" id="selMonth1" name="selCollege">
                      <%
                      	String[] collegeArr={"请选择","通信工程学院","电子工程学院","计算机学院","机电工程学院","技术物理学院","人文学院","理学院","软件学院","微电子学院"};
                    	for(int i=0;i<collegeArr.length;i++){
                    		if(college!=null&&college.equals(collegeArr[i])){
                    			out.print(String.format("<option selected=\"selected\" value=\"%s\">%s</option>",college ,college ));
                    		}
                    		else if(collegeArr[i].equals("请选择")){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print(String.format("<option value=\"%s\">%s</option>",collegeArr[i] ,collegeArr[i] ));
                    		}
                    	}
                      %>
                    </select>
                    </span></td>
                </tr>
                <tr>
                  <td align="right">专业：</td>
                  <td class="pl_r pl_border"><input style="display: none;" name="txtBirthday" id="txtBirthday" class="date" value="1990-12-6" type="text"/>
                    <span class="jSelectDateBorder date" id="spanDate1">
                    <select class="date" id="selDay1" name="selSpecialty">
                      <%
                      	String[] specialtyArr={"请选择","软件工程"};
                    	for(int i=0;i<specialtyArr.length;i++){
                    		if(specialty!=null&&specialty.equals(specialtyArr[i])){
                    			out.print(String.format("<option selected=\"selected\" value=\"%s\">%s</option>",specialty ,specialty ));
                    		}
                    		else if(specialtyArr[i].equals("请选择")){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print(String.format("<option value=\"%s\">%s</option>",specialtyArr[i] ,specialtyArr[i] ));
                    		}
                    	}
                      %>
                    </select>
                    </span></td>
                </tr>
                
                <tr>
                  <td align="right">教育程度：</td>
                  <td><select name="lstDegree" id="lstDegree" class="option_bg">
                  	  <%
                      	String[] edu_levelArr={"请选择","小学","初中","高中","技术学院","大专","本科","硕士","博士"};
                    	for(int i=0;i<edu_levelArr.length;i++){
                    		if(edu_level!=null&&edu_level.equals(edu_levelArr[i])){
                    			out.print(String.format("<option selected=\"selected\" value=\"%s\">%s</option>",edu_level ,edu_level ));
                    		}
                    		else if(edu_levelArr[i].equals("请选择")){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print(String.format("<option value=\"%s\">%s</option>",edu_levelArr[i] ,edu_levelArr[i] ));
                    		}
                    	}
                      %>  
                    </select>
                    <span id="tip_degree"></span><br/></td>
                </tr>
                
                <tr>
                  <td colspan="2"><div class="bar_sep"><img src="http://res.s.hjfile.cn/images/spacer.gif"/></div>
                    <div style="margin:15px 0 15px 0;background: #f7f7f7;padding:8px 10px;border-radius:7px;text-align: center;">填写以下信息，您将会得到更合适您的推荐信息，匹配也会更精确！</div></td>
                </tr>
               <!--  <tr>
                  <td class="pl_l" align="right">我现在：</td>
                  <td class="pl_r"><input value="1" name="chkGraduated" id="chkGraduated1" type="radio"/>
                    <label for="chkGraduated1">已经工作</label>
                    <input value="0" name="chkGraduated" id="chkGraduated0" class="ml10" checked="checked" type="radio"/>
                    <label for="chkGraduated0">还是学生</label></td>
                </tr> -->
                <tr>
                  <td class="pl_l pl_border" align="right">职业：</td>
                  <td class="pl_r pl_border"><select name="lstVocation" id="lstVocation" style="width: 150px;">
                  	  <%
                      	String[] professionArr={"请选择","翻译/口译","教育/培训（教师）","软件开发/外包",
                      		"互联网","商务外贸","文秘/助理","财会/审计","政府/公共服务","金融/保险/房地产",
                      		"旅游/交通","传媒/出版/娱乐","医疗/保健服务","零售","自由职业","学生","其他"};
                    	for(int i=0;i<professionArr.length;i++){
                    		if(profession!=null&&profession.equals(professionArr[i])){
                    			out.print(String.format("<option selected=\"selected\" value=\"%s\">%s</option>",profession ,profession ));
                    		}
                    		else if(professionArr[i].equals("请选择")){
                    			out.print("<option selected=\"selected\" value=\"请选择\">请选择</option>");
                    		}
                    		else{
                    			out.print(String.format("<option value=\"%s\">%s</option>",professionArr[i] ,professionArr[i] ));
                    		}
                    	}
                      %>
                    </select></td>
                </tr>
                <tr>
                  <td align="right" >我擅长：</td>
                  <td style="padding-top:5px;"><span id="cblGoalList">
                    <%
                    	Set<String> AllGoodAt=new TreeSet<String>();
						AllGoodAt.add("C语言");
						AllGoodAt.add("C++");
						AllGoodAt.add("Java");
						AllGoodAt.add("JSP");
						AllGoodAt.add("MySQL");
						AllGoodAt.add("Matlab");
						AllGoodAt.add("文档写作");
						
						Set<String> PersonGoodAt=new TreeSet<String>();
                    	for(int i=0;i<good_atArr.length;i++){
                    		PersonGoodAt.add(good_atArr[i]);
                    	}
                    	AllGoodAt.removeAll(PersonGoodAt);
                    	
                    	
                    	
                    	Iterator itr=PersonGoodAt.iterator();
                    	
                    	{
                    		int i=0;
                    		while(itr.hasNext()&&(good_at!="")){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"cblGoalList_%d\" name=\"pre_is_good_at\" value=\"%s\" type=\"hidden\" checked=\"checked\"/>",i, temp));
                    		//out.print(String.format("<label for=\"cblGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    	}
                    {	
                    	int i=0;
                    	itr=PersonGoodAt.iterator();
                    	while(itr.hasNext()&&(good_at!="")){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"cblGoalList_%d\" name=\"after_is_good_at\" value=\"%s\" type=\"checkbox\" checked=\"checked\"/>",i, temp));
                    		out.print(String.format("<label for=\"cblGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    	itr=AllGoodAt.iterator();
                    	while(itr.hasNext()){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"cblGoalList_%d\" name=\"after_is_good_at\" value=\"%s\" type=\"checkbox\"/>",i, temp));
                    		out.print(String.format("<label for=\"cblGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    }
                    %>
                    </span>
                    <span class="add-label">&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">添加标签</a></span>
                    </td>
                </tr>
                <tr>
                  <td align="right" >我关注：</td>
                  <td style="padding-top:5px;"><span id="cblGoalList">
                  <%
                    	Set<String> AllFocusOn=new TreeSet<String>();
						AllFocusOn.add("数模");
						AllFocusOn.add("ACM");
						AllFocusOn.add("国创");
						AllFocusOn.add("挑战杯");
						AllFocusOn.add("电赛");
						AllFocusOn.add("好点子");
						AllFocusOn.add("外包");
						
						Set<String> PersonFocusOn=new TreeSet<String>();
                    	for(int i=0;i<focus_pointArr.length;i++){
                    		PersonFocusOn.add(focus_pointArr[i]);
                    	}
                    	AllFocusOn.removeAll(PersonFocusOn);
                    	
                    	itr=PersonFocusOn.iterator();
                    	
                    	int i=0;
                    	while(itr.hasNext()&&(focus_point!="")){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"focusGoalList_%d\" name=\"pre_is_focus_on\" value=\"%s\" type=\"hidden\" checked=\"checked\"/>",i, temp));
                    		//out.print(String.format("<label for=\"focusGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    	
                    	i=0;
                    	itr=PersonFocusOn.iterator();
                    	while(itr.hasNext()&&(focus_point!="")){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"focusGoalList_%d\" name=\"after_is_focus_on\" value=\"%s\" type=\"checkbox\" checked=\"checked\"/>",i, temp));
                    		out.print(String.format("<label for=\"focusGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    	itr=AllFocusOn.iterator();
                    	while(itr.hasNext()){
                    		String temp=(String)itr.next();
                    		out.print(String.format("<input id=\"focusGoalList_%d\" name=\"after_is_focus_on\" value=\"%s\"  type=\"checkbox\"/>",i, temp));
                    		out.print(String.format("<label for=\"focusGoalList_%d\"> %s</label>",i, temp));
                    		i++;
                    	}
                    %>
                    </span>
                    <span class="add-label">&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">添加标签</a></span>
                    </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><br/>
                    
                 
                    
                    <input name="btnSaveProfile" value="保 存" id="btnSaveProfile" class="btn btnBlue" type="submit"/></td>
                </tr>
              </tbody>
            </table>
            <br/>
            <br/>
          </form>
        </div>
      </div>
      <!-- InstanceEndEditable -->
    </div>
  </div>
  <div class="footer-wrapper">
    <div class="footer"> 
      <a href="index.jsp">网站首页</a><span>|</span>
      <a href="#">问题反馈</a><span>|</span>
      <a href="#">帮助说明</a><span>|</span>
      <a href="#">关于摇篮</a><span>|</span>
      <a href="#">联系我们</a>
    </div>
  </div>
</div>
</div>
</body>
<!-- InstanceEnd --></html>
