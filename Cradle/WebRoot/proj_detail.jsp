<%@ page contentType="text/html; charset=GBK"  language="java" import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--By Cradle Team 2013-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/three_col_template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>ҡ����-Cradle-���ּ�ֵ������ϣ��</title>
<!-- InstanceEndEditable -->
<link href="css/cradle-style.css" rel="stylesheet" type="text/css" />
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
<div class="topbar-wrapper">
  <div class="topbar"> 
							<ul>
                            	<li><a href="#" nouserface="true">����</a></li>
								<li><a href="#" nouserface="true">�ҵ�ҡ��</a></li>
								<li><a href="#">�˺�����</a></li>
								<li><a href="#">�鿴��Ϣ</a></li>
                                <li><a href="login.htm" >�˳�</a></li>
								<div class="clear"></div>
							</ul>
  </div>
</div>
<div class="bg-wrapper">
  <div class="main-container">
    <div class="header">
      <div class="header-left"> <a href="#"><img src="images/logo.png" width="160" height="71" alt="ҡ����logo" /></a> </div>
      <div class="header-right">
        <div class="searchbar-wrapper">
          <form method="get" target="_self" action="#">
              <span class="search-input-wrapper">
                <input id="kw" class="search-input" type="text" maxlength="100" name="wd" autocomplete="off" />
              </span>
              <span class="search-btn-wrapper"><input value="�� ��" id="search-btn" type="submit" /></span>
            <span class="option-wrapper">
              <input id="sp0" name="sp" type="radio" />
              <label for="sp0">�û�</label>
              <input id="sp1" name="sp" type="radio" />
              <label for="sp1">�Ŷ�</label>
              <input id="sp2" name="sp" type="radio" />
              <label for="sp2">��Ŀ</label>
              <input id="sp3" name="sp" type="radio" />
              <label for="sp3">�ó���</label>
              <input id="sp4" name="sp" type="radio" />
              <label for="sp4">��ע��</label>
            </span>
          </form>
        </div>
      </div>
    </div>
    <div class="main">
      <div class="navi">
        <div class="navi-left"> </div>
        <ul>
          <li><a href="index.jsp">��ҳ</a></li>
          <li><a href="user_center">��������</a></li>
          <li><a href="#">����</a></li>
          <li><a href="#">ҡ��Ӧ��</a></li>
        </ul>
        <div class="navi-right"> </div>
      </div>
      <div class="sidebar-left">
        <div class="user-avatar-wrapper"> <a class="avatar" href="#"><img src="images/user-avatar.jpg" width="50" height="50" /></a>
          <div class="user-info">
            <div class="user-name"> <a class="name" title="����" href="#">����</a> </div>
          </div>
        </div>
        <div class="user-apps">
          <h3> <a class="more" ui-async="async" href="#">����</a>�ҵ�Ӧ�� </h3>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="user_center"><img class="icon" src="images/app.png" width="16" height="16" />��������</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />�ҵ��Ŷ�</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />����ƥ��</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/app.png" width="16" height="16" />��Ŀ����</a> </div>
          </div>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="#"><img class="icon" src="images/add_app_icon.png" width="16" height="16" />���Ӧ��</a> </div>
          </div>
        </div>
      </div>
      <!-- InstanceBeginEditable name="EditRegion_Content" -->
      <div class="content">
        <div class="location"> <span>��ǰλ�ã�<a href="index.jsp">��ҳ</a>-&gt;��Ŀ����</span></div>
		<div class="prooject-detail">
          <h2 class="panel_title">��Ŀ����</h2>
          <form name="myform" method="post" onsubmit="return chkform()" id="myform">
            <div>
              <input name="__VIEWSTATE" id="__VIEWSTATE" value="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" type="hidden">
            </div>
            <script type="text/javascript" src="/ajax/common.ashx"></script><script type="text/javascript" src="/ajax/ASP.PageClass,App_Web_ytcyy-5f.ashx?p=FFnUrCAY9ebzalXN_zt0mOPp-7n4RquGd6Jl87atn2c1"></script>
            <div id="Editbox" class="Editbox"> </div>
            <div id="EditboxCity" class="Editbox"> </div>
            <input id="province" name="province" value="" type="hidden">
            <input id="city" name="city" value="" type="hidden">
            <table id="tbl_baseInfo" style="margin:15px 0 0px 0;margin-left:20px" align="center" border="0" cellspacing="5px" width="90%">
              <tbody>
                <tr>
                  <td colspan="2"><div class="bar_sep"><img src="http://res.s.hjfile.cn/images/spacer.gif"></div>
                    <div style="background: #f7f7f7;padding:8px 10px;border-radius:7px;text-align: center; font-weight:bold;">��Ŀ��Ҫ</div></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">��Ŀ���ƣ�</td>
                  <td class="pl_r"><span id="span_city">У԰���ֽ�����վ </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">�����Ŷӣ�</td>
                  <td class="pl_r"><span id="span_city"><a href="#">�����</a> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">�ӳ���</td>
                  <td class="pl_r"><span id="span_city"><a href="#">���</a> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">��Ŀ����</td>
                  <td class="pl_r"><span id="span_city">���� </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right" width="100px">ϣ�����ó���</td>
                  <td class="pl_r good-at">
                    <ul>
                      <li>
                        <span>PHP</span>
                      </li>
                      <li>
                        <span>Linux</span>
                      </li>
                      <li>
                        <span>MySQL</span>
                      </li>
                    </ul>
                  </td>
                </tr>

                <tr>
                  <td colspan="2"><div class="bar_sep"><img src="http://res.s.hjfile.cn/images/spacer.gif"></div>
                    <div style="margin-top:30px;background: #f7f7f7;padding:8px 10px;border-radius:7px;text-align: center; font-weight:bold;">��ϸ��Ϣ</div></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">��Ŀ������</td>
                  <td class="pl_r"><span id="span_city"> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">��Ŀ����</td>
                  <td class="pl_r"><span id="span_city"> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">��Ŀ�ƻ���</td>
                  <td class="pl_r"><span id="span_city"> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">�ѿ�չ������</td>
                  <td class="pl_r"><span id="span_city"> </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">Ԥ���Ŷ�������</td>
                  <td class="pl_r"><span id="span_city">8 </span></td>
                </tr>
                <tr>
                  <td class="pl_l" align="right">����ļ������</td>
                  <td class="pl_r"><span id="span_city">4 </span></td>
                </tr>
                
                <tr>
                  <td>&nbsp;</td>
                  <td><br>
                    
                    <!--<br/>
				 <a href="" class="big">����</a> &nbsp;&nbsp;  -->
                    
                    <input name="btnSaveProfile" value="�������" id="btnSaveProfile" class="btn btnBlue" type="submit"></td>
                </tr>
              </tbody>
            </table>
            <br>
            <br>
          </form>
        </div>
      </div>
      <!-- InstanceEndEditable -->
      <div class="sidebar-right">
        <div class="recommend">
          <h2>����ϲ��</h2>
          <div class="recommend-teammate">
            <div class="recommend-header">
              <h4>�ö���</h4>
              <a href="#" title="��һ��">��һ��</a> </div>
            <div class="teammate-avatar-container">
              <ul>
                <li> <a href="#"><img src="images/h_tiny_ePwe_2cbb000002bf113e.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">����</a> </p>
                </li>
                <li> <a href="#"><img src="images/h_tiny_J4j5_65eb0000399c1375.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">����</a> </p>
                </li>
                <li> <a href="#"><img src="images/tiny_ONYG_6da400054b8a1376.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">����</a> </p>
                </li>
                <li id="last-avatar"> <a href="#"><img src="images/tiny_LgLI_463065h019117.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">����</a> </p>
                </li>
              </ul>
            </div>
          </div>
          <div class="recommend-project">
            <div class="recommend-header">
              <h4>����Ŀ</h4>
              <a href="#" title="��һ��">��һ��</a> </div>
            <div class="project-container">
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">��ͨ��������ϵͳ</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">��ͥ��Ϣϵͳ</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="proj_detail.jsp">У԰���ֽ�����վ</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">���ܻ�����</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">Ƕ��ʽ����</a> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-wrapper">
    <div class="footer"> 
      <a href="index.jsp">��վ��ҳ</a><span>|</span>
      <a href="#">���ⷴ��</a><span>|</span>
      <a href="#">����˵��</a><span>|</span>
      <a href="#">����ҡ��</a><span>|</span>
      <a href="#">��ϵ����</a>
    </div>
  </div>
</div>
</div>
</body>
<!-- InstanceEnd --></html>