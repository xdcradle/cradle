<!--By Cradle Team 2013-->
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>摇篮网-Cradle-发现价值，孕育希望</title>
<link href="css/cradle-style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="topbar-wrapper">
  <div class="topbar"> 
							<ul>
                            	<li><a href="#" nouserface="true">黄崛</a></li>
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
          <li><a href="user_center.jsp">个人中心</a></li>
          <li><a href="#">好友</a></li>
          <li><a href="#">摇篮应用</a></li>
        </ul>
        <div class="navi-right"> </div>
      </div>
      <div class="sidebar-left">
        <div class="user-avatar-wrapper"> <a class="avatar" href="#"><img src="images/user-avatar.jpg" width="50" height="50" /></a>
          <div class="user-info">
            <div class="user-name"> <a class="name" title="黄崛" href="#">黄崛</a> </div>
          </div>
        </div>
        <div class="user-apps">
          <h3> <a class="more" ui-async="async" href="#">更多</a>我的应用 </h3>
          <div class="apps-item">
            <div class="item-title selected"> <a ui-async="async" href="user_center.html"><img class="icon" src="images/app.png" width="16" height="16" />个人中心</a> </div>
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
      <div class="content"> 
        <div class="location">
          <span>当前位置：<a href="index.html">首页</a></span>
        </div>
        <div class="today-new-wrap">
          <div class="title-wrap"><h2>最新加入</h2><span><a href="#">更多</a></span></div>
          <div class="new-list">
            <ul>
              <li>
                <span class="new-list-name"><a href="#">张三</a></span>
                <div class="study-info"><span>西安电子科技大学 软件学院 软件工程</span></div>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>C语言</span>
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
                <span class="new-list-name"><a href="#">李四</a></span>
                <div class="study-info"><span>西安电子科技大学 软件学院 软件工程</span></div>
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
                <span class="new-list-name"><a href="#">王五</a></span>
                <div class="study-info"><span>西安电子科技大学 软件学院 软件工程</span></div>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>文档写作</span>
                      </li>
                      <li>
                        <span>策划</span>
                      </li>
                      <li>
                        <span>英语翻译</span>
                      </li>
                    </ul>
                    </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="today-new-wrap">
          <div class="title-wrap"><h2>最新项目</h2><span><a href="#">更多</a></span></div>
          <div class="new-list">
            <ul>
              <li>
                <span class="new-list-name"><a href="#">交通流量监视系统</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>外包项目</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="proj_detail.html">校园二手交易网站</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>国创</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">数模美赛</a></span>
                <div class="good-at-list">
                <ul id="no-bg">
                      <li >
                        <span>数模</span>
                      </li>
                    </ul>
                    </div>
              </li>
              <li>
                <span class="new-list-name"><a href="#">ACM成都邀请赛</a></span>
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
          <h2>猜你喜欢</h2>
          <div class="recommend-teammate">
            <div class="recommend-header">
              <h4>好队友</h4>
              <a href="#" title="换一组">换一组</a> </div>
            <div class="teammate-avatar-container">
              <ul>
                <li> <a href="#"><img src="images/h_tiny_ePwe_2cbb000002bf113e.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">张三</a> </p>
                </li>
                <li> <a href="#"><img src="images/h_tiny_J4j5_65eb0000399c1375.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">李四</a> </p>
                </li>
                <li> <a href="#"><img src="images/tiny_ONYG_6da400054b8a1376.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">王五</a> </p>
                </li>
                <li id="last-avatar"> <a href="#"><img src="images/tiny_LgLI_463065h019117.jpg" width="50" height="50" /></a>
                  <p style="text-align:center;"> <a href="#">赵六</a> </p>
                </li>
              </ul>
            </div>
          </div>
          <div class="recommend-project">
            <div class="recommend-header">
              <h4>好项目</h4>
              <a href="#" title="换一组">换一组</a> </div>
            <div class="project-container">
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">交通流量管理系统</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">家庭信息系统</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="proj_detail.html">校园二手交易网站</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">智能机器人</a> </div>
              </div>
              <div class="project-item">
                <div class="item-title selected"> <a ui-async="async" href="#">嵌入式开发</a> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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
</html>
