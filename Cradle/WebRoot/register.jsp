<%@ page contentType="text/html; charset=GBK" language="java" import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String errmsg = "";

if (request.getAttribute("err") != null)
{
	errmsg=request.getAttribute("err").toString();
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="shortcut icon" href="http://pass.hujiang.com/favicon.ico?20111230" type="image/x-icon">
    <title>����ҡ����</title>
    <link rel="stylesheet" href="register_files/ebfb843122fef72c923b34a829436001.css" type="text/css">
    <script src="register_files/mv.js" async="" type="text/javascript"></script><script src="register_files/mba.js" async="" type="text/javascript"></script><script src="register_files/ga.js" async="" type="text/javascript"></script><script src="register_files/mvl.js" async="" type="text/javascript"></script><script src="register_files/5c59c71c72e3907b89bdf702aa1c05fc.js" type="text/javascript"></script>
  
    <script type="text/javascript">
        var _gaq = _gaq || [];

        var ga_userid = 0;
        var ga_username = "";
        var ga_user_reg_source = "";
    </script>
 
    <script type="text/javascript">
        var _mvq = _mvq || [];
        _mvq.push(['$setAccount', 'm-21610-1']);
        _mvq.push(['$logConversion']);
        (function () {
            var mvl = document.createElement('script');
            mvl.type = 'text/javascript'; mvl.async = true;
            mvl.src = ('https:' == document.location.protocol ? 'https://secure' : 'http://static') + '.mediav.com/mvl.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(mvl, s);
        })();

        function getCookieStatus() {
            var status = 0;
            var cookieStr = "wb_check=kcehc_bw";
            document.cookie = cookieStr;
            if (document.cookie.indexOf(cookieStr) > -1) {
                status = 1;
                var date = new Date();
                date.setTime(date.getTime() - 1000);
                document.cookie = cookieStr + "; expires=" + date.toGMTString();
            }
            return status;
        }

        $(function () {
            var status = getCookieStatus();
            if (!status) {
                alert('��⵽����������޷�д��cookie��������������˽����Ϊ�����¡�');
            }
            var logo = $('#header #logo').css('background-image');

            if (logo && logo.indexOf('/signup/static/images/logo.gif') > -1) {
                $('#header #logo a').attr('href', 'http://www.hujiang.com');
            }
        });

    </script>
<style id="mailListAppendCss" type="text/css">.mailListBox{border:1px solid #369; background:#fff; font-size:12px;}.mailListDefault{padding:0 5px;cursor:pointer;white-space:nowrap;}.mailListFocus{padding:0 5px;cursor:pointer;white-space:nowrap;background:#369;color:white;}.mailListHlignt{color:red;}.mailListFocus .mailListHlignt{color:#fff;}</style>
</head>

<body style="height: 956px;" id="language">
 <script src="register_files/334bab487eef700bcf02905f4334654f.js" type="text/javascript"></script>

<!--[if lt IE 7]>
<style type="text/css">
.hint{
	left:280px;
    
}
</style>
<![endif]-->

    <form action="register" name="form1" method="post" id="form1">
<div>
<input name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNzUwMDg5MjAwZGQeAnwa2VGARjKdMGpD0ybRe8jGQw==" type="hidden">
</div>

<div>

	<input name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBQK8u5QvAvu49B0C8r3gkQ8Cw+G8zwsCkJSx/QUB1F9DsLYa6jfZkGR8I+aHbxmJaw==" type="hidden">
</div>
	    <div id="wrapper">
	  		<div id="main">			
				
<div id="header">
    <div id="logo">
    	<a class="logohref" target="_blank" href="#"><img src="images/logo.png" width="140" height="60" alt="ҡ����" /></a>
    </div>
    <div id="BodyHeader_displaylogin">
 	<span class="gray login_text"> �����˺ţ�ֱ��&nbsp;<a href="login.jsp"  class="noline ml5">��¼</a></span>
    </div>
</div>

				<div id="content">				
					<table id="reg_info" class="empty fl">
						<tbody>
							<tr>
								<td>
                                    <div class="input_wrap">
									    <label for="user_id">�û���</label>
										<input name="user_id" id="name" tabindex="1" class="text_field" maxlength="12" autocomplete="off" type="text">
									</div>
									<span class="hide hint">Ӣ�ġ����֡����ֻ��»��ߣ�2-12λ�������ִ�Сд</span>
									<span class="error valid"></span>
									
								</td>
							</tr>
							<tr>
								<td>
                                    <div class="input_wrap">
									    <label for="password">����</label>
										<input name="password" id="password" tabindex="2" class="text_field" maxlength="20" oncopy="return false;" oncut="return false;" onpaste="return false;" style="ime-mode:disabled" type="password">
									</div>
									<span class="hint hide">Ӣ�ġ����ֻ���ţ�6-20λ�����ִ�Сд:</span>
									
									<div class="clear"></div>
									
									<input name="hide_pwdStrong" value="" id="hide_pwdStrong" type="hidden">
									<div class="clear"></div>
								</td>
							</tr>
							<tr>
                                <td>
                                    <div class="input_wrap">
									    <label for="re_password">ȷ������</label>
										<input name="re_password" id="re_password" tabindex="3" class="text_field" maxlength="20" oncopy="return false;" oncut="return false;" onpaste="return false;" style="ime-mode:disabled" type="password">
									</div>
                                    
									
									<span class="hint hide">Ϊ���������׼ȷ�ԣ����ٴ���������</span>
								</td>
							</tr>	
							<tr>
								<td style="z-index:2;">
                                    <span style="display:inline-block;position:relative;float:left;"><div id="mailListBox_0" class="justForJs mail_out_box" style="width:267px;_width:267px;position:absolute;left:-6000px;top:40px;z-index:999;overflow:hidden;"></div><div class="input_wrap zindex">
									    <label for="email">��������</label>
										<input name="email" id="mail" tabindex="4" class="text_field" maxlength="50" style="ime-mode:disabled" autocomplete="off" type="text">
									</div></span>
									<span class="hint hide">�����㳣�õĵ�������</span>
									
								</td>
							</tr>
							<tr>
								<td>
                                    <div class="input_wrap">
									    <label for="user_id">��ʵ����</label>
										<input name="true_name" id="name" tabindex="5" class="text_field" maxlength="12" autocomplete="off" type="text">
									</div>
									<span class="hide hint">ҡ������һ��������ʵ�������н��Ѻ�ƥ���ƽ̨��ע��󲻿��޸ģ�</span>
									<span class="error valid"></span>
									
								</td>
							</tr>							
								
																																				
						</tbody>
					</table>
					
					
                    
                    

<!--��Ƶ�Ƽ�-->

                  <div class="spread_video">
                    <span>����ȥ�������Ķ��ѣ�</span>
                    <div style="margin-top:20px;"><img src="images/spurs.jpg" width="390" height="269" /></div>
                  </div>



                    <div class="clear"></div>
					
					<div class="post_box">
						<span class="err_msg">
						<%
						if(errmsg!=null)
							out.print(errmsg);
					 	%></span>
                        <input value="����ע��" id="reg_button" type="submit" />                   
                    </div>                    
					<div class="clear"></div>
                    <div class="spread_video_box">
                        <div id="spread_video">
                            
                        </div>
                        <p>
                            <span class="fr mt5">
                                <a href="###" class="icon_close_sv"><img class="vmiddle" src="register_files/ico_ing_showsmall.gif"></a>
                                <a class="gray noline close_spread_video" href="#1">����</a>
                                
                            </span>
                        </p>
                    </div>
				</div>
            </div>
						
				
<div id="footer">

					<div class="content_footer"></div>
					<div class="footer_content">
						<div style="height: 30px;">
							<span class="fl">
								<a href="#" target="_blank" class="noline">���ⷴ��</a>
								-
								<a href="#" target="_blank" class="noline">����˵��</a>
								-
								<a href="#" target="_blank" class="noline">����ҡ��</a>
								-
								<a href="#" target="_blank" class="noline">��ϵ����</a>
							</span>
							<span class="fr">
								Copyright 2013 <a href="#" target="_blank" class="noline">ҡ����</a>
							</span>
							<div class="clear"></div>
						</div>
					</div>
				</div>
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
			    el.src = "http://webclick.yeshj.com/clickgather.ashx?counter=2012_pass" + yesdata;
			    document.body.appendChild(el);
			}, 2000);
    })();
	</script>
    <script type="text/javascript" src="register_files/other_pass_2012.js"></script>



            
	    </div>
    </form>
    <script type="text/x-jquery-tmpl" id="html5Player">
        <video id="Html5Video" width="450" height="370" autoplay="autoplay" controls="controls"> 
            <source src="${src}" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2" ' />
        </video>
    </script>

    <script type="text/x-jquery-tmpl" id="swfPlayer">
        <object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0' width='450' height='370' id='cc_47A69FB016E0EB9C'>
			<param name='movie' value='${src}' />
			<param name='allowFullScreen' value='true' /><param name='allowScriptAccess' value='always' /><param name='wmode' value='transparent' />
			<embed src='${src}' width='450' height='370' name='cc_47A69FB016E0EB9C' allowFullScreen='true' allowScriptAccess='always' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash'/>
			</object>
    </script>
    <script type="text/javascript">

        function CharMode(iN) {
            if (iN >= 48 && iN <= 57)
                return 1;
            if (iN >= 65 && iN <= 90)
                return 2;
            if (iN >= 97 && iN <= 122)
                return 4;
            else
                return 8;
        }

        function bitTotal(num) {
            modes = 0;
            for (i = 0; i < 4; i++) {
                if (num & 1) modes++;
                num >>>= 1;
            }
            return modes;
        }

        function checkStrong(sPW) {
            if (sPW.length <= 4)
                return 0;
            Modes = 0;
            for (i = 0; i < sPW.length; i++) {
                Modes |= CharMode(sPW.charCodeAt(i));
            }

            return bitTotal(Modes);

        }

        $(function () {
            $("#password").keyup(function () {
                var pwd = $.trim($(this).val());

               

                var level = checkStrong(pwd);
                for (var i = 0; i < weak_password.length; i++) {
                    if (pwd == weak_password[i])
                    {
                        level = 0;
                        break;
                    }
                }
                $("#hide_pwdStrong").val(level);
                switch (level) {
                    case 0:
                        $(".pnl_pwdStrong").removeClass().addClass("pnl_pwdStrong pnl_pwdStrong_1");
                        break;
                    case 1:
                        $(".pnl_pwdStrong").removeClass().addClass("pnl_pwdStrong pnl_pwdStrong_1");
                        break;
                    case 2:
                        $(".pnl_pwdStrong").removeClass().addClass("pnl_pwdStrong pnl_pwdStrong_2");
                        break;
                    case 3:
                        $(".pnl_pwdStrong").removeClass().addClass("pnl_pwdStrong pnl_pwdStrong_3");
                        break;
                    default:
                        $(".pnl_pwdStrong").removeClass().addClass("pnl_pwdStrong pnl_pwdStrong_3");
                }
            });


            function loadVideo() {
                var data = { "src": "" };
                if (isIPad() || isIPhone() || isAndroid()) {
                    data["src"] = 'http://f1.c.hjfile.cn/pass/bulo_1.mp4';
                    $('#html5Player').tmpl(data).appendTo('#spread_video');
                }
                else {
                    data["src"] = 'http://union.bokecc.com/flash/single/DA133C6A3C82A26F_47A69FB016E0EB9C_true_38199327C590DCE9_2/player.swf';
                    $('#swfPlayer').tmpl(data).appendTo('#spread_video');
                }
            }



            $(".spread_video").click(function () {
                if (!$('.spread_video_box').is(":hidden"))
                    return;
                _gaq.push(["_trackEvent", "video", "play"]);
                loadVideo();
                $('.spread_video_box').fadeIn();
            });
            $(".close_spread_video,a.icon_close_sv").click(function () {
                $('.spread_video_box').fadeOut();
                $('#spread_video').empty();
            });
        });
    </script>
    <script type="text/javascript">
        var _startTime = 0;
        function timePush() {
            _endTime = new Date().getTime();
            _gaq.push(["_trackTiming", "reg_form_new", 'nbulo', _endTime - _startTime]);
        }
        $(function () {

            $(".icon_i").hover(function () {
                $(".tips_box", this).fadeIn(200);
            }, function () {
                $(".tips_box", this).fadeOut(200);
            });

            $('input.text_field').focus(function () {
                if (_startTime == 0) {
                    _startTime = new Date().getTime();
                }
            });
            $("#form1").submit(function () {
                timePush();

            });
            $(".input_wrap input").each(function () {
                if ($(this).val() == "" || $(this).val == null) {
                    $(this).siblings("label").removeClass("hide");
                } else {
                    $(this).siblings("label").addClass("hide");
                }
            });
            $(".icon_i").hover(function () {
                $(this).next("img").css("visibility", "");
            }, function () {
                $(this).next("img").css("visibility", "hidden");
            });
            $('#vali_code').focus(function () {
                $('#valicode').show();
            });
            $('#random_image,#change_code').click(function () {
                $('#vali_code').val('').focus();
                $('#random_image').attr('src', '/signup/captcha.aspx?r=' + Math.random());
            });
            $('#reg_button').click(function () {
               
                $("#form1").submit();
                $('#vali_code').blur();
                return false;
            });
            $("#reg_button").focus(function (event) {
                $(".checkbox").removeClass("checkbox_focus");
                $(this).addClass("reg_button_focus");
            });

            $(document).keydown(function (e) {
                if (e.keyCode == 13 && $('#reg_button').hasClass('reg_button_focus')) {
                    $("#form1").submit();
                }
            });

            $("#vali_code").keydown(function (e) {
                var elementType = e.target.type;
                if (e.keyCode == 13) {
                    $(this).parent().parent().parent().find(".hint").hide();
                    $("#form1").submit();
                }
            });


            $('#mail').keydown(function (e) {
                if (e.keyCode == 13) {
                    if (!$('div.justForJs').is(':visible')) {
                        $('#vali_code').focus();
                        return;
                    }
                    $("#form1").submit(function () { $('#vali_code').focus(); });
                }

            });



            // �ʼ��Զ����
            $('#mail').mailAutoComplete({
                boxClass: "mail_out_box", 	//�ⲿbox��ʽ
                listClass: "mail_list_box", 	//Ĭ�ϵ��б���ʽ
                focusClass: "mail_focus_box", //�б�ѡ��ʽ��
                markCalss: "mail_mark_box", 	//������ʽ
                autoClass: true,
                zIndex: 999,
                choseText: '��ѡ��������������',
                callback: function () {
                    $('#vali_code').focus();
                }
            });

            // ��ʾ���ֵ��Զ���ʾ������
            $(".text_field").focus(function () {

                if ($(this).parent().parent().find('span.error').is(':visible')) {

                    $(this).parent().parent().find('span.error').hide();

                }
                $(this).parent().parent().parent().find(".hint").removeClass("hide");
            });

            $(".text_field").keydown(function (e) {
                if (isSpace($(this).val())) {
                    $(this).val($(this).val().replace(/(\s+)/g, ''));
                    return false;
                }
                return true;
            });
            $(".text_field").keyup(function (e) {
                if (isSpace($(this).val())) {
                    $(this).val($(this).val().replace(/(\s+)/g, ''));
                    return false;
                }
                return true;
            });

            $(".text_field").bind("paste cut input keyup keydown", function(){
                var a = $(this).val();
                a !== "" ? $(this).parent().find("label").hide() : $(this).parent().find("label").show();
            });

            $('.text_field').change(function () {
                $(this).val(DBC2SBC($(this).val()));
            });

            $(".text_field").blur(function () {
                $(this).parent().parent().parent().find(".hint").addClass("hide");
            });
            bindValidate();

          
        });

        function DBC2SBC(str) {
            var result = '';
            for (i = 0; i < str.length; i++) {
                code = str.charCodeAt(i); //��ȡ��ǰ�ַ���unicode����
                if (code >= 65281 && code <= 65373)//�����unicode���뷶Χ�е������е�Ӣ����ĸ�Ѽ������ַ�
                {
                    result += String.fromCharCode(str.charCodeAt(i) - 65248); //��ȫ���ַ���unicode����ת��Ϊ��Ӧ����ַ���unicode��
                } else if (code == 12288)//�ո�
                {
                    result += String.fromCharCode(str.charCodeAt(i) - 12288 + 32);
                } else {
                    result += str.charAt(i);
                }
            }
            return result;
        }

        function isNum(val) {
            return /(^\d+$|^_+$)/.test(val);
        }

        function isSpace(value) {
            return /(\s+)/i.test(value);
        }

        var weak_password = ['000000','111111','11111111','112233','123123','123321','123456','12345678','654321','666666','888888','abcdef','abcabc','abc123','a1b2c3','aaa111','123qwe','qwerty','qweasd','admin','password','p@ssword','passwd','iloveyou','5201314','password','123456','12345678','qwerty','abc123','monkey','1234567','letmein','trustno1','dragon','baseball','111111','iloveyou','master','sunshine','ashley','bailey','passw0rd','shadow','123123','654321','superman','qazwsx','michael','football'];

        function bindValidate() {
            // �����ż��
            $.validator.addMethod("punctuation_char", function (value, element) {
                var list = "~��@#��%����&*��������+��-=������������������������~!@#$%^&*()+|`-=\\:\"<>?;',./{}";
                for (var i = 0; i < value.length; i++) {
                    var c = value[i];
                    if (list.indexOf(c) != -1) {
                        return false;
                    }
                }
                return true;
            }, "�������б�����:");


            

            // �Ƿ�����
            $.validator.addMethod("isnum", function (value, element) {
                return !isNum(value);
            }, "�û���Ӧ���ٰ���һ����ĸ����");

            // �����Ƿ�һ��
            $.validator.addMethod("password_same", function (value, element) {
                return $("#password").val() == value;
            }, "������������벻һ��");


            //��������Ƿ����û���һ��
            $.validator.addMethod("check_password", function (value, element) {
                
                return $('#name').val() != value;
            });

            //���������
            $.validator.addMethod("check_weakpassword", function (value, element) {
                for (var i = 0; i < weak_password.length; i++) {
                    if (value == weak_password[i])
                        return false;
                    
                }
                return true;
            });

            // �������û������
            $.validator.addMethod("name_format_check", function (value, element) {
                return /^[_0-9a-zA-Z\u4e00-\u9fa5]{2,12}$/i.test(value);
            }, "2-12λ����ĸ�����֣��»��ߣ����ģ������������");


            //��������Ƿ��пո�
            $.validator.addMethod("space_check", function (value, element) {

                return !/(\s+)/i.test(value);

            }, "�������пո�");

            // �û����Ƿ��Ǵ����ּ��
            $.validator.addMethod("name_format_int_check", function (value, element) {
                return !(/^[0-9]{2,12}$/i.test(value));
            }, "�����Ǵ�����");

            // ���ܰ���www.��http 
            $.validator.addMethod("mail_format", function (value, element) {
                return (value.toLowerCase().indexOf("www.") == -1 && value.toLowerCase().indexOf("http") == -1)
            }, "���������ʽ����");

            // ������
            $.validator.addMethod("regex", function (value, element, param) {
                var regex = new RegExp(param);
                return regex.test(value);
            }, "");

            $("form").validate({
                focusCleanup: true,
                focusInvalid: false,
                success: "valid",
                errorClass: "error",
                validClass: "valid",
                onkeyup: false,

                errorElement: "span",
                rules: {
                    name: {
                        required: true,
                        isnum: true,
                        punctuation_char: true,
                        space_check: true,
                        minlength: 2,
                        name_format_check: true,
                        remote: { "url": "/signup/handler/check.ashx?type=name&r=" + Math.random(), "callback": function () {} }
                    },
                    password: {
                        space_check: true,
                        required: true,
                        minlength: 6,
                        maxlength: 20,
                        check_password:true,
                        check_weakpassword:true
                    },
                    re_password: {
                        space_check: true,
                        required: true,
                        minlength: 6,
                        maxlength: 20,
                        password_same: true,
                        check_password:true,
                        check_weakpassword:true

                    },
                    mail: {
                        required: true,
                        regex: "^[_a-z0-9A-Z]{1}[a-z0-9A-Z_\.-]{2,31}@[a-z0-9A-Z][A-Za-z0-9_\.-]{0,}[a-z0-9A-Z][\.][a-z0-9A-Z]{2,4}$",
                        mail_format: true,
                        remote: { "url": "/signup/handler/check.ashx?type=mail&r=" + Math.random(), "callback": function () {}}
                    },

                    vali_code: {
                        required: true,
                        minlength: 4,
                         remote: { "url": "/signup/handler/check.ashx?type=vali_code&r=" + Math.random(), "callback": function () {$('#change_code').click();}}
                       
                    },
                    apply_user_rule: {
                        required: true
                    }
                },
                messages: {
                    name: {
                        required: "2-12λ����ĸ�����֣��»��ߣ����ģ������������",
                        isnum: '�û���Ӧ���ٰ���һ����ĸ����',
                        punctuation_char: "����ʹ�ó���ĸ (a-z)�����֡����ֺ��»�������������ַ�",
                        space_check: "����ʹ�ó���ĸ (a-z)�����֡����ֺ��»�������������ַ�",

                        minlength: '������ʹ��2���ַ���',
                        name_format_check: "2-12λ����ĸ�����֣��»��ߣ����ģ�����������š�",
                        remote: "�û����Ѵ��ڣ�����Ը��û����������ֻ���ݺ�׺"
                    },
                    password: {
                        required: "������6-20λ������Ӣ�ġ����ֺͷ��ţ�������ո�",
                        minlength: "Ϊ��֤����İ�ȫ�ԣ�������ʹ�� 6 ���ַ�",
                        space_check: "�������пո�",
                        check_password: "���벻�����û�����ͬ",
                        check_weakpassword: "�벻Ҫʹ��������"
                    },
                    re_password: {
                        required: "������6-20λ������Ӣ�ġ����ֺͷ��ţ�������ո�",
                        minlength: "Ϊ��֤����İ�ȫ�ԣ�������ʹ�� 6 ���ַ�",
                        equalTo: "������������벻һ��",
                        space_check: "�������пո�",
                        check_password: "���벻�����û�����ͬ",
                        check_weakpassword: "�벻Ҫʹ��������"
                    },
                    mail: {
                        required: "���䲻��Ϊ��",
                        regex: "���������ʽ����",
                        remote: "�����Ѵ���",
                        mail_format: "���������ʽ����"
                    },
                    langs: {
                        required: "����ѡ��һ��",
                        maxlength: "���ѡ��4��"
                    },
                    vali_code: {
                        required: "��֤�벻��Ϊ��",
                        minlength: "������4λ��֤��",
                        remote: "��֤���������������"
                    },
                    apply_user_rule: {
                        required: "����ͬ�������û�����"
                    }
                }
            });
        }
                        

</script>



<img src="register_files/clickgather.gif" style="display: none; width: 0px; height: 0px;"></body></html>
