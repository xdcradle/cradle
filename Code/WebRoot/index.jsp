<!--By Cradle Team 2013-->
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ҡ����-Cradle-���ּ�ֵ������ϣ��</title>
<link href="css/cradle-style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="topbar-wrapper">
  <div class="topbar"> 
							<ul>
                            	<li><a href="#" nouserface="true">����</a></li>
								<li><a href="#" nouserface="true">�ҵ�ҡ��</a></li>
								<li><a href="#">�˺�����</a></li>
								<li><a href="#">�鿴��Ϣ</a></li>
                                <li><a href="login.jsp" >�˳�</a></li>
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
          <li><a href="user_center.jsp">��������</a></li>
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
            <div class="item-title selected"> <a ui-async="async" href="user_center.html"><img class="icon" src="images/app.png" width="16" height="16" />��������</a> </div>
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
      <div class="content"> 
        <div class="location">
          <span>��ǰλ�ã�<a href="index.html">��ҳ</a></span>
        </div>
        <div class="today-new-wrap">
          <div class="title-wrap"><h2>���¼���</h2><span><a href="#">����</a></span></div>
          <div class="new-list">
            <ul>
              <li>
                <span class="new-list-name"><a href="#">����</a></span>
                <div class="study-info"><span>�������ӿƼ���ѧ ���ѧԺ �������</span></div>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>C����</span>
                      </li>
                      <li>
                        <span>C++</span>
                      </li>
                      <li>
                        <span>Matlab</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">����</a></span>
                <div class="study-info"><span>�������ӿƼ���ѧ ���ѧԺ �������</span></div>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>Java</span>
                      </li>
                      <li>
                        <span>JSP</span>
                      </li>
                      <li>
                        <span>Linux</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">����</a></span>
                <div class="study-info"><span>�������ӿƼ���ѧ ���ѧԺ �������</span></div>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>�ĵ�д��</span>
                      </li>
                      <li>
                        <span>�߻�</span>
                      </li>
                      <li>
                        <span>Ӣ�﷭��</span>
                      </li>
                    </ul>
                    </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="today-new-wrap">
          <div class="title-wrap"><h2>������Ŀ</h2><span><a href="#">����</a></span></div>
          <div class="new-list">
            <ul>
              <li>
                <span class="new-list-name"><a href="#">��ͨ��������ϵͳ</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>�����Ŀ</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="proj_detail.html">У԰���ֽ�����վ</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>����</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">��ģ����</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>��ģ</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">ACM�ɶ�������</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>ACM</span>
                      </li>
                    </ul>
                    </div>
              </li>
             
            </ul>
          </div>
        </div>
      </div>
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
                <div class="item-title selected"> <a ui-async="async" href="proj_detail.html">У԰���ֽ�����վ</a> </div>
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
</html>
