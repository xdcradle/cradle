<%@ page contentType="text/html; charset=GBK" language="java" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String errmsg="";
%>

<%
if (request.getAttribute("err") != null)
{
	errmsg=request.getAttribute("err").toString();
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>摇篮网登录 - Cradle User Login</title>
<link rel="stylesheet" href="login_files/8ae17e5e145077484598cfcf35edd152.css" type="text/css">
    <script src="login_files/ga.js" async="" type="text/javascript"></script>
    <script src="login_files/96cfbf278daf0db8855ac22223a5bef5.js" type="text/javascript"></script>
<style type="text/css">
div.message { height: 40px; margin-left: 76px; }
#content { padding-top: 0; }
span.hide { display: none; }
#spread_video { background: black; }
</style>
</head>
<body>
<form action="login" id="loginform" method="post">
  <div id="wrapper">
    <div id="main">
      <div id="header"> <a href="#" id="logo"><img src="images/logo.png" width="140" height="60" /></a>
        <div class="dotline"> </div>
      </div>
      <div id="content">
        <div class="message" id="loginmsg"> </div>
        <div id="login">
          <div class="user_name input_box" id="user_name">
            <label for="txtUsername" class="tips"> 用户名/邮箱/手机号</label>
            <input name="txtUsername" id="txtUsername" tabindex="1" maxlength="50" type="text">
            <span style="display: none;" for="txtUsername" generated="true" class="hide error visibshow" id="error_username"> 帐号不存在</span> </div>
          <div class="password input_box" id="password">
            <label for="txtPassword" class="tips"> 密码</label>
            <input name="txtPassword" id="txtPassword" tabindex="2" class="txtPassword" maxlength="20" onkeyup="this.value=this.value.replace(/[\u4e00-\u9fa5]/g,'')" onpaste="return false;" autocomplete="off" disableautocomplete="" type="password">
            <span for="txtPassword" generated="true" class="hide error visibshow" id="error_password"> 密码不正确</span> </div>
          <div class=""><span class="err_msg"><%=errmsg %></span> <span class="forget_password fr"><a class="color666 wshadow" href="#" title="通过注册邮箱找回密码" target="_blank" tabindex="5"> 忘记密码？</a></span></div>
          <div class="clear"> </div>
          <div class="submit"> <input value="登 录" id="log_button2" type="submit" /><span class="reg color666 wshadow">没账号？</span> <a href="register.jsp" class="big" tabindex="6">马上注册</a> </div>
          <div class="clear"> </div>
        </div>
        <div class="spread_pic">
                    <span>哪里去找这样的队友？</span>
                    <div style="margin-top:20px;"><img src="images/spurs.jpg" width="390" height="269" /></div>
                  </div>
        <div class="bottom_bg"> </div>
        <div class="spread_video_box" style="display: none;">
          <div id="spread_video"> </div>
          <p> <span class="fr mt5"><a href="javascript:void(0);" class="icon_close_sv"> <img class="vmiddle" src="login_files/ico_ing_showsmall.gif"></a> <a class="gray noline close_spread_video" href="javascript:void(0);"> 收起</a> </span> </p>
        </div>
        <div class="clear"> </div>
      </div>
      <div id="footer">
        <div class="content"> <span class="fl"><a href="#" target="_blank" class="color666">问题反馈</a> - <a href="#" target="_blank" class="color666">帮助说明</a> - <a href="#" target="_blank" class="color666">关于摇篮</a> - <a href="#" target="_blank" class="color666">联系我们</a> </span><span class="fr">Copyright 2013 <a href="#" target="_blank" class="color666">摇篮网</a></span> </div>
        <script type="text/javascript">
    (function () {
        if (document.URL.indexOf("//dev.") > -1 || document.URL.indexOf("local") > -1) {
            return;
        }

        function getCookieValue(arglen) {
            var endstr = document.cookie.indexOf(";", arglen);
            if (endstr == -1)
                endstr = document.cookie.length;
            return document.cookie.substring(arglen, endstr);
        }

        function getCookie(name) {
            var arg = name + "=";
            var arglen = arg.length;
            var cookielen = document.cookie.length;
            var i = 0;
            var j;
            while (i < cookielen) {
                j = i + arglen;
                if (document.cookie.substring(i, j) == arg)
                    return getCookieValue(j);
                i = document.cookie.indexOf(" ", i) + 1;
                if (i == 0)
                    break;
            }
            return null;
        }

        var yes_cookieinfo = getCookie("ClubAuth");
        var yesdata = "&key=" + yes_cookieinfo + "&refe=" + escape(document.referrer) + "&random=" + Math.random();

        window.setTimeout(
			function () {
			    var el = document.createElement("img");
			    el.style.display = "none";
			    el.style.width = "0px";
			    el.style.height = "0px";
			    el.src = "http://webclick.yeshj.com/clickgather.ashx?counter=pass_login" + yesdata;
			    document.body.appendChild(el);
			}, 2000);
    })();
</script> 
        <script type="text/javascript" src="login_files/other_pass_2012.js"></script> 
      </div>
    </div>
  </div>
</form>
<script type="text/x-jquery-tmpl" id="html5Player">
    <video id="Html5Video" width="450" height="370" autoplay="autoplay" controls="controls"> 
            <source src="http://common.hjfile.cn/pass/bulo_1.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2" ' />
        </video>
</script> 
<script type="text/x-jquery-tmpl" id="swfPlayer">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0"
        width="450" height="370" id="cc_47A69FB016E0EB9C">
        <param name="movie" value="http://union.bokecc.com/flash/single/DA133C6A3C82A26F_47A69FB016E0EB9C_true_38199327C590DCE9_2/player.swf" />
        <param name="allowFullScreen" value="true" />
        <param name="allowScriptAccess" value="always" />
        <param name="wmode" value="transparent" />
        <embed src="http://union.bokecc.com/flash/single/DA133C6A3C82A26F_47A69FB016E0EB9C_true_38199327C590DCE9_2/player.swf"
            width="450" height="370" name="cc_47A69FB016E0EB9C" allowfullscreen="true" allowscriptaccess="always"
            pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" />
    </object>
</script> 
<script type="text/javascript">
    String.format = function () {
        var s = arguments[0];
        for (var i = 0; i < arguments.length - 1; i++) {
            var reg = new RegExp("\\{" + i + "\\}", "gm");
            s = s.replace(reg, arguments[i + 1]);
        }

        return s;
    }

    function loadVideo() {

        if (isIPad() || isIPhone() || isAndroid()) {
            $('#html5Player').tmpl({}).appendTo('#spread_video');
        }
        else {
            $('#swfPlayer').tmpl({}).appendTo('#spread_video');
        }
    }

    function removeVideo() {
        $('#spread_video').html('');
    }

    //检测input变化
    if ($.browser.msie) {
        $('#txtUsername,#txtPassword').unbind("propertychange").bind("propertychange", function (e) {
            e.preventDefault();
            checkVal(this);
        });
    } else {
        $('#txtUsername,#txtPassword').on("input", function (event) {
            checkVal(this);
        });
    }

    function lightBorder(obj) {
        var obj = $('#' + obj);
        var showCount = 0;
        var MyInterval = setInterval(function () {
            if (showCount < 4) {
                if (showCount % 2 == 0) {
                    obj.css("background", "#FFDDDD");
                }
                else {
                    obj.css("background", "#fff");
                }
                showCount++;
            }
            else {
                clearInterval(MyInterval);
            }
        }, 150);
        return false;
    }

    $('#txtUsername,#txtPassword,#txtcaptcha').keydown(function (event) {
        checkVal($(this));
    });
    $('#txtUsername,#txtPassword,#txtcaptcha').keyup(function (event) {
        checkVal($(this));
    });

    $('.checkbox , .check_label').bind('click', checkboxToggle);

    function checkboxToggle() {
        $('.checkbox').toggleClass('selected');
        $('#SaveCookie').val('0');
        if ($('.checkbox').hasClass('selected')) {
            $('#SaveCookie').val('1');
        }
        return false;
    }
    $(".link_video").click(function () {
        removeVideo();
        loadVideo();
        $('.spread_video_box').fadeIn();
        $(this).blur();
    });
    $(".close_spread_video,a.icon_close_sv").click(function () {
        $('.spread_video_box').fadeOut();
        removeVideo();
        $(this).blur();
    });

    function checkVal(obj) {

        obj = $(obj);
        if ($.trim(obj.val()) == '' || obj.val() == null) {
            obj.parent().find('.tips').removeClass('hide');
        }
        else {
            obj.parent().find('.tips').addClass('hide');
            obj.parent().find('span').hide();
        }
    }


    var checkInteval;

    function checkStatus() {

        if ($.trim($('#txtUsername').val()) != '' && $.trim($('#txtPassword').val()) != '') {
            clearInterval(checkInteval);
            checkVal($('#txtUsername'));
            checkVal($('#txtPassword'));
        }
        else {

        }
    }

    $(function () {
        checkInteval = setInterval(checkStatus, 100);
    });



    function SignInFailed_Process(data) {
        if (data.Data == 1 && typeof (HJCaptcha) == 'undefined') {
            window.location.reload();
            return;
        }
        if (data.Code == 1) {
            lightBorder('txtUsername');
            $('#txtUsername').focus();
            $('#error_username').show().html("帐号不存在");
        }
        else if (data.Code == 2) {
            lightBorder('txtPassword');
            
            if(typeof (HJCaptcha) != 'undefined')
                $('#captcha_img').attr('src', HJCaptcha.img + '&r=' + Math.random());
            $('#txtPassword').focus().val('');
            $('#txtcaptcha').val('');
            $('#error_password').show().html("密码不正确");
            
            
        }
        else if (data.Code == 3) {
            $('#error_username').html("对不起,您的帐号已被锁定，如有疑问请联系QQ: 200906790").show();
        }
        else if (data.Code == 10) {
            $('#error_username').html("对不起,您的帐号已被锁定，如有疑问请联系QQ: 200906790").show();
        }
        else if (data.Code == 11) {
            $('#error_valicode').html("请输入正确的验证码").show();
            if (typeof (HJCaptcha) != 'undefined')
                $('#captcha_img').attr('src', HJCaptcha.img + '&r=' + Math.random());
            $('#txtcaptcha').focus().val('');

        }
        else {
            $('#error_username').html('登录超时，请刷新浏览器再试。').show();
        }
}
function SignInEnd_Process() {
    window.location.href = 'http://bulo.hujiang.com';
}




$(function () {
    setTimeout(function () {
        checkVal($("#txtUsername"));
        checkVal($("#txtPassword"));
    }, 100);
    $("#txtPassword,#txtUsername,#txtcaptcha").keydown(function (e) {
        if (e.keyCode == 13) {
            $("#log_button").click();
        }
    });
    $('#txtUsername').focus();
    $('#log_button').click(function () {
        var btn = $(this);
        //$('#error_username,#error_password').hide();
        var username = $.trim($('#txtUsername').val());
        var password = $.trim($('#txtPassword').val());
        var token = $('#token').val() ? $('#token').val() : '';
        var code = $('#txtcaptcha').val() ? $('#txtcaptcha').val() : '';

        if (username == '') {
            $('#txtUsername').focus();
            lightBorder('txtUsername');
            $('#error_username').show().html("请输入您的用户名、邮箱或手机号");
            return false;
        }
        if (password == '') {
            lightBorder('txtPassword');
            $('#txtPassword').focus();
            $('#error_password').show().html("请输入您的密码");
                return false;
            }
        username = encodeURIComponent(username);
        password = hex_md5(password);
        var saveCookie = $('#SaveCookie').val();

        UserLogin(username, password, saveCookie == 1 ? 0 : 1, token, code, function () {
            $('#error_username,#error_password').hide();
            $(btn).html("正在登录...");

                $(btn).addClass("disabled");
            });
        return false;
    });
    $(".icon_more_login").click(function(){
        $(".more_login_box").show().animate({"opacity":"1"},300);
        $(this).hide();
    });

});

</script> 
<img src="login_files/clickgather.gif" style="display: none; width: 0px; height: 0px;">
</body>
</html>
