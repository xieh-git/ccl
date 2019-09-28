<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/register.css">
	<link rel="stylesheet" href="css/love.css">
    <script src="jQuery/jquery-1.11.3/jquery.js"></script>
  </head>
  
  <body>
        <div class="wrapper">
                <div class="main">
                        <p id='header'>用户注册</p>
                        <form action="registerControl" method="POST" id="fom">

                                <p>
                                        <i><img src="img/zc.png" alt="" width="25px" height="25px"></i>
                                        用户名:<span>*</span>
                                        <input type="text" name="name" id="name" autofocus
                                          required placeholder="字母、数字、下划线，至少6位最长18位"
                                          maxlength='18' value="">
                                        <span id="span-name"></span>
                                </p>

                                <p>
                                        <i><img src="img/pwd.png" alt="" width="25px" height="25px"></i>
                                        登录密码:<span>*</span>
                                        <input type="password" name="pwd1" id="pwd1"
                                        required placeholder="字母数字下划线 . @至少6位最长20位"
                                        maxlength='20' value="">
                                        <span id="span-pwd1"></span>
                                </p>

                                <p>
                                        <i><img src="img/pwd.png" alt="" width="25px" height="25px"></i>
                                        确认密码:<span>*</span>
                                        <input type="password" name="pwd2" id="pwd2"
                                         required placeholder="再次确认您的登录密码" maxlength='20' value="">
                                        <span id="span-pwd2"></span>
                                </p>

                                <p>
                                        <i><img src="img/email.png" alt="" width="25px" height="25px"></i>
                                        您的邮箱:<span>*</span>
                                        <input type="email" name="email" id="email" 
                                        required placeholder="请输入您的邮箱" value="">
                                        <span id="span-email"></span>
                                </p>

                                <p>
                                        <i><img src="img/phone.png" alt="" width="25px" height="25px"></i>
                                        您的电话:<span>*</span>
                                        <input type="text" name="phone" id="phone" 
                                        required placeholder="请输入您的11位数字手机号" maxlength='11' value="">
                                        <span id="span-phone"></span>
                                </p>

                                <p>
                                        <i><img src="img/QQ.png" alt="" width="25px" height="25px"></i>
                                        您的QQ号:<span>*</span>
                                        <input type="text" name="qq" id="qq" 
                                        required placeholder="请输入您的QQ号" maxlength='10' value="">
                                        <span id="span-qq"></span>
                                </p>
                                
                                <input type="submit" value="注册" id="sub" disabled="disabled">
                                <!-- <input type="reset" value="清空" id="res"> -->
                                <button id="res">清空</button>


                        </form>
                        <p id="hint">
                         <i><img src="img/hint.png" alt="" width="18px" height="18px">
                         温馨提示:邮箱、手机号和QQ号请认真填写。此信息是找回密码的必要条件!
                        </p>
                </div>

        </div>

        <script src="js/register.js"></script>
        <script src="js/love.js"></script>
        <script src="js/snow.js"></script>
</body>
</html>
