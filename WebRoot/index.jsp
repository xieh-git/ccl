<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录页面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/all.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/love.css" />
<link rel="stylesheet" href="bootstrap/bootstrap-3.3.7/dist/css/bootstrap.css">
<script src="jQuery/jquery-1.11.3/jquery.js"></script>
<script src="bootstrap/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
</head>

<body>
	<div class='pic'>
		<div class="wrapper">
			<div class="fom">
				<form action="login" method="POST" id="main-fom">
					<p>
						<i><img src="img/zc.png" alt="" width="25px" height="25px">
						</i>用户名:<input type="text" name="userName" id="userName" 
						autofocus	required placeholder="请输入用户名" maxlength='18' value="">
							<span id="span-name"></span>
							
					</p>
					<p>
						<i><img src="img/pwd.png" alt="" width="25px" height="25px">
						</i>密码:<input type="password" name="userPwd" id="userPwd" required
							placeholder="请输入密码" maxlength='20'>
					</p>
					<p>
						<i><img src="img/yz.png" alt="" width="25px" height="25px">
						</i>验证码:<input type="text" name='verify' id="verify" value="" required
							placeholder="验证码" maxlength='4' value="" ><span id='yz' style="top:0px;"></span><span
							id="hint" style="top:0px;">点击图片切换</span>
					</p>
					<input type="submit" value="登录" id="login">
				</form>
				<a href="register.jsp" id="a1">莫有账号？甭子担心！点俺...</a> <a href="#"
					id='a2'>我忘记密码了...</a>
			</div>
		</div>

	</div>

	<script src="js/login.js"></script>
	<script src="js/love.js"></script>
	<script src="js/snow.js"></script>
	
	
	<%
	String con = (String)session.getAttribute("login");
	if("true".equals(con)){
	%>	
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">温馨提示</h4>
        </div>
        <div class="modal-body">
          密码错误哦，登录失败耶！
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
          <!-- <button type="button" class="btn btn-primary">确认</button> -->
        </div>
      </div>
    </div>
  </div>
    <script type="text/javascript">
		$(document).ready(function(){
		    $('.modal').modal();
		})
    
    </script>
	
		
		
	<%
		String cName = "";
		Cookie [] cookies = request.getCookies();
		int len = cookies.length;
		if(cookies != null){
			for (int i = 0; i < len; i++) {
			if (cookies[i].getName().equals("cName")) {
				cName = cookies[i].getValue();
				break;
			} 
		}
	 }
	 %>
	 <script type="text/javascript">
	 
		$(document).ready(function(){
		   $('#userName').val('<%=cName%>');
		})
    
    </script>
	 <% 
	 
	}// if
 	%>
 	
 	
</body>
</html>
