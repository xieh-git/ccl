<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="verify.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/main.css">
   <!--  <link rel="stylesheet" type="text/css" href="css/ad.css"> -->
    <link rel="stylesheet" type="text/css" href="css/moveAd.css">
    <link rel="stylesheet" type="text/css" href="css/love.css">
    <link rel="stylesheet" type="text/css" href="css/viewpager.css"/>
    <script src="jQuery/jquery-1.11.3/jquery.js"></script>

  </head>
   
<body>
    <header>
        <nav>
            <div class="nav-content">
                <div class="nav-logo">
                    <img src="img/logo.png" alt="" width="100px" height="100px" style="border-radius:4px;">
                </div>
                <div class="nav-main">
                    <div class="nav-main-ul">
                        <div class="ul-li">
                            <ul>
                                <li id='web'>
                                    web前端
                                    <div class="web-hover">
                                        <p><strong>好用的web前端的IDE(列举部分)</strong></p>
                                        <p title="jQuery"><a href="https://pan.baidu.com/s/1i0otx6arM46eQK7hsdZhuw" target="_blank">
                                           jQuery(提取码:fahu)</a></p>
                                            
                                        <p title="HBuilder"><a href="https://pan.baidu.com/s/1gN2h4qvDViRX2WxNIVJklQ" target="_blank">
                                           HBuilder(提取码:qklx)</a></p> 
                                           
                                        <p title="HBuilder"><a href="https://pan.baidu.com/s/1h5m2RiC65SRcOK2KiqqyAg" target="_blank">
                                               HBuilderX(提取码:u1qf)</a></p>
                                               
                                        <p title="PhpStorm"><a href="https://pan.baidu.com/s/1Z-FeWX48cpazLZEqivi6Fw" target="_blank">
                                            PhpStorm(提取码:cvf9)</a></p>
                                           
                                        <p title="WebStorm"><a href="https://pan.baidu.com/s/1QvI__63LgKZfzif43V8G_Q" target="_blank">
                                            WebStorm(提取码:37pe)</a></p>
                                           
                                        <p title="sublime Text"><a href="https://pan.baidu.com/s/1xa5M8ZhJeArwQ3c2eoXWqQ" target="_blank">
                                           sublimeText(提取码:zuo5)</a></p>
                                           
                                        <p title="Visual Studio Code"><a href="https://pan.baidu.com/s/1HjRfvsb-C2DXuUZGWx8ArA" target="_blank">
                                            Visual Studio Code(提取码:02qj)</a></p>
                                       
                                       
                                       
                                        <p><strong>百度、微信、支付宝小程序开发工具</strong></p>
                                        <p title="百度开发工具"><a href="https://pan.baidu.com/s/1NNf2l2Rv3g6s1W622DKODg" target="_blank">
                                            	百度开发工具(提取码:6k6j)</a></p>
                                       
                                        <p title="微信小程序开发工具"><a href="https://pan.baidu.com/s/1ttAyCcsLVA3PYbCrgLNnmA" target="_blank">
                                          	  微信小程序开发工具(提取码:ivdu)</a></p>
                                        
                                        <p title="支付宝小程序开发工具"><a href="https://pan.baidu.com/s/1KIIwgv7BhtTwucwcGAb2xQ" target="_blank">
                                            	支付宝小程序开发工具(提取码:0m31)</a></p>
                                            	
                                            	
                                            	
                                        <p><strong>浏览器</strong></p> 
                                         <p title="谷歌浏览器"><a href="https://pan.baidu.com/s/1QGGqXtrFmHMMT3XXmPgyMQ" target="_blank">
                                            	谷歌浏览器(提取码:vxo8)</a></p> 
                                         
                                         <p title="谷歌浏览器开发者版"><a href="https://pan.baidu.com/s/1omrlmBs71rorHXDpYikIbA" target="_blank">
                                            	谷歌浏览器开发者版(提取码:mc0c)</a></p> 
                                         
                                         <p title="谷歌浏览器Canary版"><a href="https://pan.baidu.com/s/1uCd2H5InKAeiw1LNzPdcNQ" target="_blank">
                                            	谷歌浏览器Canary版(提取码:uvy0)</a></p>  
                                         
                                         <p title="火狐浏览器"><a href="https://pan.baidu.com/s/1727WNXROB-2Kf9ug9CsgCQ" target="_blank">
                                            	火狐浏览器(提取码:47un)</a></p>  
                                         
                                         <p title="火狐浏览器开发版"><a href="https://pan.baidu.com/s/1rWNpP4XrvFenXAbqxHUEsw" target="_blank">
                                            	火狐浏览器开发版(提取码:ek8k)</a></p>  
                                         
                                          <p title="Opera浏览器"><a href="https://pan.baidu.com/s/17Swv8XhOh-UfaQjQ3XDRRw" target="_blank">
                                            	Opera浏览器(提取码:iqej)</a></p>  
                                         
                                          <p title="Opera浏览器开发版"><a href="https://pan.baidu.com/s/11QOJFu0R8kXMWNGtT7CNaQ" target="_blank">
                                            	Opera浏览器开发版(提取码:bjbi)</a></p>  
                                           
                                           
                                    </div>

                                </li>
                                <li id='java'>
                                    Java
                                    <div class="java-hover">
                                        <p><strong>常用jar包(列举部分)</strong></p>  
                                        <p title="jdk"><a href="https://pan.baidu.com/s/1fQHzr7n_7ocEaPHYnFHrqQ" target="_blank">
                                            JDK7、8(提取码:ae8i)</a></p>
                                           
                                        <p title="jsp项目需要"><a href="https://pan.baidu.com/s/1OEPeGwyLCGwPNo5csmyE9Q" target="_blank">
                                            JSTL(提取码:g6uw)</a></p>
                                           
                                        <p title="单元测试需要"><a href="https://pan.baidu.com/s/1KkEAtIo8lMrP1D_LmCz4NQ" target="_blank">
                                            Junit4(提取码:41y7)</a></p>
                                           
                                        <p title="记录日志"><a href="https://pan.baidu.com/s/1v4VvJ-9bfkCGRUmLJIWZTA" target="_blank">
                                            log4j(提取码:23bd)</a></p>
                                            
                                        <p title="jsp项目需要,与jstl一起使用"><a href="https://pan.baidu.com/s/1OEPeGwyLCGwPNo5csmyE9Q" target="_blank">
                                            standard(提取码:g6uw)</a></p>
                                           
                                        <p title="jsp项目需要"><a href="https://pan.baidu.com/s/1XzQ8Hrs5UdoKh0ZE4EZ3JQ" target="_blank">
                                            FastJSON(提取码:hdr1)</a></p>
                                            
                                        <p title="用户网页上传文件"><a href="https://pan.baidu.com/s/1F66XGVte8Quf54rXtsuskQ" target="_blank">
                                            commons-io(提取码:2j28)</a></p>
                                            
                                        <p title="用户网页上传文件"><a href="https://pan.baidu.com/s/1F66XGVte8Quf54rXtsuskQ" target="_blank">
                                            commons-fileupload(提取码:2j28)</a></p>
                                            
                                        <p title="tomcat的lib目录需要，用于连接池链接MySQL数据库"><a href="https://pan.baidu.com/s/1vZsAOnZDM9IT2y9LKP3WqA" target="_blank">
                                            mysql-connector-java-bin(提取码:8vhi)</a></p>
                                            
                                       
                                        <p><strong>服务器</strong></p>
                                        <p title="tomcat服务器"><a href="https://pan.baidu.com/s/1CJAwg3jo2ENAiTA5W30fWg" target="_blank">
                                            tomcat(提取码:w74g)</a></p>
                                                                               
                                        <p><strong>常用IDE(列举部分)</strong></p>
                                        <p title="IDEA"><a href="https://pan.baidu.com/s/1_JlZGBRVV8AgwNSDNuy-SA" target="_blank">
                                           IDEA(提取码:kygy)</a></p>
                                           
                                        <p title="eclipse"><a href="https://pan.baidu.com/s/10ZmRyNMKkdqhj4L4NSGa-A" target="_blank">
                                            eclipse(提取码:n41i)</a></p>
                                           
                                        <p title="NetBeans"><a href="https://pan.baidu.com/s/1UosJM4b2G8wRsMas_vjELw" target="_blank">
                                            NetBeans(提取码:exxt)</a></p>
                                           
                                        <p title="MyEclipse"><a href="https://pan.baidu.com/s/1BnTmajJ2AsrTAjuvJwusYQ" target="_blank">
                                            MyEclipse(提取码:nqtm)</a></p>
                                           
                                          
                                    </div>
                                
                                
                                </li>
                                <li id='python'>

                                    Python
                                    <div class="python-hover">
                                        <p><strong>IDE和Python开发环境(列举部分)</strong></p>    
                                        <p title="Python的IDE"><a href="https://pan.baidu.com/s/1W5dQ9QRgz5zavqPH4y6LoA" target="_blank">
                                            PyCharm(提取码:5k94)</a></p>
                                           
                                        <p title="Python开发环境"><a href="https://pan.baidu.com/s/1KvuFuXZYo48zJv5onlRtkQ" target="_blank">
                                            python.exe(提取码:1714)</a></p>
                                            
                                         <p><strong>服务器</strong></p> 
                                          <p title="nginx服务器"><a href="https://pan.baidu.com/s/1sS2Gdgx8CD8s_fSeaYffrQ" target="_blank">
                                            nginx(提取码:44z9)</a></p> 
                                           
                                    </div>

                                </li>
                                <li id="mysql">
                                    MySQL
                                    <div class="mysql-hover">
                                        <p><strong>安装包和JDBC的jar包</strong></p>
                                        <p title="MySQL数据库GUI管理工具"><a href="https://pan.baidu.com/s/17Eizldd9o5qDxXeBmFl6Cw" target="_blank">
                                            SQLyog(提取码:1pfi)</a></p>
                                            
                                        <p title="数据库GUI管理工具"><a href="https://pan.baidu.com/s/1tnHW450UhjCqqIZBoZX4ag" target="_blank">
                                            Navicat(提取码:iejt)</a></p>
                                           
                                        <p title="MySQL数据库安装包"><a href="https://pan.baidu.com/s/1sw-k-FQTWFQfmrhh64BSKA" target="_blank">
                                            MySQL5.5安装包(提取码:0ke9)</a></p>
                                            
                                        <p title="MySQL数据库安装包"><a href="https://pan.baidu.com/s/1OXgk-gae0nFcxEKcazrGLw" target="_blank">
                                            MySQL8.0安装包(提取码:i8re)</a></p>
                                            
                                        <p title="用JDBC连接MySQL数据库需要的jar包"><a href="https://pan.baidu.com/s/15emxB3ESE7FaJf1cnp-MwA" target="_blank">
                                            mysql-connector-java-5.1.47(提取码:8dr0)</a></p>
                                            
                                        
                                    </div>

                                </li>
                                <li id="sqlserver">
                                    SQLserver
                                    <div class="SqlServer-hover">
                                        <p><strong>安装包和JDBC的jar包</strong></p>
                                        <p title="用JDBC连接SQL数据库需要的jar包"><a href="https://pan.baidu.com/s/1R3LwnRH-_u6lYAnJiMHp3w" target="_blank">
                                           sqljdbc40-jre6(提取码:rou7)</a></p>
                                           
                                        <p title="用JDBC连接SQL数据库需要的jar包"><a href="https://pan.baidu.com/s/1_OfcghtUpZAyNKTZFMl23Q" target="_blank">
                                            sqljdbc41-jre7(提取码:32x1)</a></p>
                                            
                                        <p title="用JDBC连接SQL数据库需要的jar包"><a href="https://pan.baidu.com/s/10KOrQ263gzmYJFUELycJIg" target="_blank">
                                            sqljdbc42-jre8(提取码:33sq)</a></p>
                                            
                                        <p title="安装包"><a href="https://pan.baidu.com/s/1IywzZX2YvAUxsF-nQKIDfg" target="_blank">
                                           SQLServer安装包(提取码:j5ao)</a></p>
                                           
                                        
                                       
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="nav-user">
                    <div class="user">
                        <img src="img/user.png" alt="" width="20px" height="20px">
                       <%--  <span title="${sessionScope['KeyName'] }">您好!${sessionScope['KeyName'] }</span> --%>
                         <a href="" target="_blank" style="color: white;"><span title="${sessionScope['KeyName'] }">您好!${sessionScope['KeyName'] }</span></a> 
                    </div>
                    <div class="admin">
                        <img src="img/name.png" alt="" width="20px" height="20px">
                       <!--  <span title="网站作者">联系我</span> -->
                        <a href="" target="_blank" style="color: white;"><span title="网站作者">联系我</span></a>
                    </div>
                </div>
            </div>
        </nav>
    </header>


    <section> 
        <div class="main-left">
            <div class="main-left-content">

                <div class="main-accp-s1-note">
                    <div class="s1-note">
                        <p title="笔记仅供参考">ACCP课程S1全部笔记</p>
                    </div>

                    <div class="s1-note-font">
                        <p><strong>使用Java理解程序逻辑</strong></p>
                        <p><a href="http://note.youdao.com/noteshare?id=1b005f37c5281b1bc446d80df7d5f8d8&sub=C3796BD0A22B4C8095C699F0FA7D09A2" target="_blank">
                            初识Java</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=51e4be978f6468caf962d72746870cd4&sub=4D3998190A6C48608C694564D96CC529" target="_blank">
                            变量、数据类型和运算符</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=ae2a5bbefdeb32bf68675cafaaa83ec0&sub=85794BAA139642EAAD5AD30E34F6EDCE" target="_blank">
                            选择结构(一)</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=f566b3ce3e165d5341c431e03785feb6&sub=8DEE57DA5ADD4BECB622893DF2899957" target="_blank">
                            选择结构(二)</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=3a5f0b35dcb6c51ad50cc831779d0dc9&sub=9832AE2536754526891CDC4E9D55CEBD" target="_blank">
                            循环结构(一)</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=72b7ed7103d08ab0df3b6ef1c8b21ba8&sub=59B5AED1D24F4F2984ADC174C520D95A" target="_blank">
                            循环结构(二)</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=8a25c319a69ce1e17b5d7e85a724bb48&sub=051D41220E3A43F380B66AB2CC677080" target="_blank">
                            数组</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=6230fc1adcea69a441b46919751a5966&sub=D4500ED62BB64E6A90364A4628036AC8" target="_blank">
                            类和对象</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=5718248c907c0896d917fcb033e90cfd&sub=377CC61B90E0432BA38AB83191899EAE" target="_blank">
                            类的无参方法</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=435c05322769baf2a42571107a9b6495&sub=69AC99EA5BC64A80B6F25295BAF8F285" target="_blank">
                            带参数的方法</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=0e2cc2aeee59ffd46b9f52e6512f6a7a&sub=FE4EA28BF6034196B1143FF809BC1391" target="_blank">
                            字符串</a></p>

                        <p><strong>使用HTML语言和CSS开发商业站点</strong></p>
                        <p><a href="http://note.youdao.com/noteshare?id=eae39f940f8bc339e8970379c4e1cfe0&sub=B75B3862F0354913B93F94534BF4EEB5" target="_blank">
                            HTML5基础</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=3718e4329e1dd6a3e134818f303a407d&sub=814A84990F994555986D676B7383509F" target="_blank">
                            列表、表格与媒体元素</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=591ea0c9123264ac3a72187dd3d4298c&sub=B3008588A5A442FA923596ECDDB508E7" target="_blank">
                            表单</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=dd678539d57548c09884e870cd20b73d&sub=2C9EE34631E8447BB032C115E47744BF" target="_blank">
                            初识CSS3</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=f6bae2fdc9fa73eb4ab3b451e70a66f3&sub=DACA109069ED44CE8393627AA8EEE53C" target="_blank">
                            CSS3美化网页元素</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=1250a68b1845c1aec7577e5890bff34f&sub=EAC2B2455BC142E794EECB6D778DCC3A" target="_blank">
                            盒子模型</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=3a75f54efc6a97733216260d43535785&sub=F81EEBC2551441D8AE86EDA81C1DD1D9" target="_blank">
                            浮动</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=72d34049824dd3f649e237c3c7f8864f&sub=6A86D249156C4B7FBDF1B1ADEA4B8868" target="_blank">
                            定位网页元素</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=53608abc9d9caad06961f34624085db3&sub=8AADAAB0B8F4484C8547F1214851FCB2" target="_blank">
                            利用CSS3制作网页动画</a></p>

                        <p><strong>C#语言和SQL Server数据库技术</strong></p>
                        <p><a href="http://note.youdao.com/noteshare?id=6e7ee50cae74c0f184ff0cfde80a326a&sub=E9B87967DCE948F6BF62E9F4FF5F2E91" target="_blank">
                            第一个C#程序</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=74c7ff6047e1983492405cad5d268d48&sub=B733880089394F928BD48CF7F7CCDC01" target="_blank">
                            C#语法快速热身</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=2a4b183080b9d49f112a06005fbb2952&sub=C8617A78B5A24A2BA1DD7416A6869753" target="_blank">
                            使用属性升级MyBank</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=f762024524d8499b90834d45a9c49694&sub=F6D1F37F311E4582B4A3F72A4337BDD1" target="_blank">
                            深入C#的String类</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=00aad6322753daeb53cd5fa0d47a129a&sub=CBC3885B5FC141A4831C9D0E81D00FCE" target="_blank">
                            程序数据集散地:数据库</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=2677710000b771c0d814330b67f5fa6d&sub=BA9CD4CF70004D81903205421C9E3F49" target="_blank">
                            用表组织数据</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=c26c36ab33ab9f7046bf42aff8e147ef&sub=256B8A2600C840A6B67EC577573B9B13" target="_blank">
                            用SQL语句操作数据</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=9fbdec82db4ab6c71efa1195fe2c1894&sub=51A94AC147FE44D1AEA43277497D2ABC" target="_blank">
                            数据库查询基础</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=11b60be75bcef4533f194be4aca29ce5&sub=87F8ED1EDB6B48199D46DA0BABC65F4C" target="_blank">
                            模糊查询和聚合函数</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=9a3d0e854977a85f03f9342d3c457bda&sub=F4E630FB86424FBC9625AFBBC38A3142" target="_blank">
                            连接查询和分组查询</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=7f9246b89e5b92e79706882dd0072351&sub=C13833D42B54424FB2EEBBDD4CDA5944" target="_blank">
                            使用ADO.NET访问数据库</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=dbd88f79f24cdabca4d421cb080985c1&sub=D451279C81EC4B2A9202FB73BEC10713" target="_blank">
                            使用ADO.NET查询和操作数据库</a></p>

                        <p><strong>使用C#开发数据库应用系统</strong></p>
                        <p><a href="http://note.youdao.com/noteshare?id=b44fb5cb974f93c0d9aca3c7a1454420&sub=E40DF91ECCA94A0DB28D723134123D7A" target="_blank">
                            初识Windows程序</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=cf45dfa58357062886339c40a0fbbfa8&sub=3CFF7B87E9BC4B82B5BB2BBFCF080D39" target="_blank">
                            构建布局良好的Windows程序</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=80657c4cec779561bfd9675dd64e3a54&sub=56A8E622AAB04C4E89D341A7644A56B0" target="_blank">
                            使用ListView控件展示数据</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=ea6b6c934a0001a2e8cf0d1452121a01&sub=E69DB913450745B1A9F2A139B960B334" target="_blank">
                            实现Windows程序的数据更新</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=a85cd4e5955db676fb8925d2d60f0fb1&sub=F9F7952FBC204BBD881A99721ACC2F4C" target="_blank">
                            实现Windows程序的数据绑定</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=93debd07d50b3c2d715aebedcdae2c9c&sub=68E175C97CC6471EA483EC2784B21511" target="_blank">
                            数据筛选和排序</a></p>                     
                        
                    </div>



                </div>

                <div class="main-accp-s2-note">
                        <div class="s2-note">
                            <p title="笔记仅供参考">ACCP课程S2全部笔记</p>
                        </div>
                        <div class="s2-note-font">
                                <p><strong>深入.NET平台和C#编程</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=4745f3726711dadeedb15afa2b0ffd00&sub=D8EF75243D3641F986203FA24C328C14" target="_blank">
                                    深入.NET框架</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=c768088edc2650d4cfb9744865001b34&sub=76FA1D9F81F94AD28B794BDD05D4109B" target="_blank">
                                    深入C#数据类型</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=cdb5290373ce3405f78a3eaf094944d9&sub=B00D5E1932B74F3490D77CA1C2E32716" target="_blank">
                                    使用集合组织相关数据</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=89c88bb140e031f42c66c1bfbbeac729&sub=835200AF0B724ED3B6E0B35D7FD58E8F" target="_blank">
                                    深入类的方法</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=22c9c02f24eab0bb0c65f1d77044f0b2&sub=39839A312A1F459DA51DAD04C75C174C" target="_blank">
                                    初识继承和多态</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=249ae08d5976ec42722cb6b363b9ebad&sub=CFBB615966154D0F9C4B00D59FC262A0" target="_blank">
                                    深入理解多态</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=ec2a7e5c57907d1230ccf1fa6d1707bd&sub=C8DA1D263426438CB877F4DC6EC631E1" target="_blank">
                                    可扩展标记语言XML</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=92e7fd487ddf7aa5b6956d24c5f20f3a&sub=B048D9E0A30C4A60B07CA4824551957F" target="_blank">
                                    文件操作</a></p>

                                <p><strong>使用Java实现面向对象编程</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=65e5b416bba69cd2b0051a878d58cfdb&sub=85CB15069A6A4B0EAA37F62FA62D1C5D" target="_blank">
                                    对象和封装</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=bc09e33811dabbf02b0e6c163cd266a2&sub=88EFDCE2C8414C48856221D0BE87DCD5" target="_blank">
                                    继承</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=479360839c3f4dc8f1e47fb6d567b959&sub=DAF9188F940649819E2E1FF46C5733C5" target="_blank">
                                    多态</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=156471e0e59454dbd04efd53a3f45867&sub=713CF8F1F9DF4E77BEF1245F52E01FB2" target="_blank">
                                    接口</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=d12571b387d25b4a9ab3d524dbccc102&sub=26D75D7E67C84193842F280E818B4305" target="_blank">
                                    异常</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=c0f64c44eab9134ad5a598f0ac3ff6fc&sub=7A8F875D4DF347DE82DC81800734B261" target="_blank">
                                    集合框架</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=1a69c06e47e29a0aa3c2f64a9f827fec&sub=9194DA7DE8314944BEE486643EF07146" target="_blank">
                                    多线程</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=f0600d746dde1e1a4b360b4715c557ea&sub=3607A7B7CF8345B98409334EA188E4B0" target="_blank">
                                    File I/O</a></p>

                                <p><strong>使用Java实现数据库编程</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=d4d9d8320926be29bb1a0e307497643e&sub=F959711308544547B84DD3AE93E68F6D" target="_blank">
                                    数据库的设计</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=8b89448b744abac5fcdfecc1ad65fb34&sub=77AEDF072F434BE1AEFC05BC5A1723BC" target="_blank">
                                    初识MySQL</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=d344eb9eb712929172a15b122f3942e6&sub=AED2CF5FBB8A4121B0E7CA525B7E6E48" target="_blank">
                                    高级查询(一)</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=9f85c43afc8127c6eac88fe90b294466&sub=8443DD45B2EA49CDABE3BB1F38E93234" target="_blank">
                                    高级查询(二)</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=13cc3ef5f5ebd6e2731285dae7ec0e32&sub=41A8FDD0B9B4412AA7A540388EAFF092" target="_blank">
                                    事务、视图、索引、备份和恢复</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=75aeab3cc42e1a07f700d68addadfc4a&sub=9C7985C25A0543B9A7D8D37DEE71AD1B" target="_blank">
                                    JDBC</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=7d56f812b6d37a53567f6fdb4a1e0b78&sub=9C59AA26E2434A3087307239EE43BBD3" target="_blank">
                                    DAO模式</a></p>

                                <p><strong>使用jQuery快速高效制作网页交互特效</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=539a57a6f89ac8da8040eb345c753c6f&sub=492226B0742C43058135C865CDE8C28A" target="_blank">
                                    JavaScript基础</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=d8160270cbd811069065fedb02f2ac3e&sub=6A4A7D64DBB045699486407EA203F74F" target="_blank">
                                    JavaScript操作BOM对象</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=d9dc6f78f901cac222ef93be58bae186&sub=D1E8034F21D8431C9B4643A3F455CF05" target="_blank">
                                    JavaScript操作DOM对象</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=6087946aa92baff8c4eb7f0a5c41a29f&sub=5D40362485414BE8BD383D1356CAB8CD" target="_blank">
                                    JavaScript对象及初识面向对象</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=025c30a85a9ee3c34bb0571ee3bb3706&sub=41C2BCBEBD9C4DBEAB1E5C61DCAFDFB6" target="_blank">
                                    初识jQuery</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=6f819cc4d9e69b90d1b0986130f1eb7a&sub=7900624FB771455E807BB54B85032541" target="_blank">
                                    jQuery选择器</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=e4c0f1b978e72106ab7803e8116f3dd5&sub=21B6381CA6D04F8CA11C8E6170197DC5" target="_blank">
                                    jQuery中的事件与动画</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=6419b5acffb25eb9aed9c97a370cb75b&sub=8FA6B5B5661D4CA8A64D32778E49203C" target="_blank">
                                    使用jQuery操作DOM</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=5fd494494031f8c59af9a0629b045098&sub=7BE9F209D328452EBFB949A75FF6CEF9" target="_blank">
                                    表单效验</a></p>

                                <p><strong>使用JSP/Servlet技术开发新闻发布系统</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=1f7654779816228078af9a4f499afb19&sub=3D20F275BDB14564BECEA738B3270D16" target="_blank">
                                    动态网页开发基础</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=aabe11e59e1e70930b93b64509243a65&sub=37881FB538D94C47A4B335F881C62159" target="_blank">
                                    JSP数据交互(一)</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=a3987c5b0656bd1e56bd5eb172a10b43&sub=0CD7B92C42924489812ACD77CD8DE4F3" target="_blank">
                                    JSP数据交互(二)</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=8fd27b1b914f1da100fa1f4397cea82e&sub=65E7CA480221491FAF8968C86DF80CD6" target="_blank">
                                    使用分层实现业务处理</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=a1902c1b7b77f57607650c197496dafd&sub=4D17FEF18D004BC9ADE843A4DE7CE017" target="_blank">
                                    JSP开发业务应用</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=b193206003fe8a0590c243845d9f4928&sub=506D810126E14D71A41FDD4ED5930D1D" target="_blank">
                                    Servlet基础</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=e40723d41fd8b9879a8a6c8484e6c3ea&sub=D9C57932225E4FFC809BC329623A0D2B" target="_blank">
                                    JSTL和EL</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=051ec68c67cd124d571cae1c94d51b40&sub=CFE012C452C043E39EB6144E6B3C5949" target="_blank">
                                    Ajax与jQuery</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=ee91a5e2e3cc1662f8e4af9da0802f33&sub=544B5EC71B0B48B5A049A60A8480F485" target="_blank">
                                    Ajax交互扩展</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=5c5d2d2b768c8e38eee63d7e550e0b08&sub=F75FA51D1021466B84F77BFD6ACDD698" target="_blank">
                                    关于tomcat部署JavaEE应用</a></p>
                                

                               
                        </div>       

                </div>

                <div class="main-accp-y2-note">
                    <div class="y2-note">
                        <p title="笔记仅供参考">ACCP课程Y2全部笔记</p>
                    </div>
                    <div class="y2-note-font">
                        <p><strong>使用SSM框架开发企业级应用</strong></p>
                        <p><a href="http://note.youdao.com/noteshare?id=c5a6c68cebaeb127f3a730586b131140&sub=07563216BE3848D48F6CB4E908E6D92E" target="_blank">
                        	初识MyBatis</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=c5a6c68cebaeb127f3a730586b131140&sub=07563216BE3848D48F6CB4E908E6D92E" target="_blank">
                        SQL映射文件</a></p>
                        <p><a href="http://note.youdao.com/noteshare?id=f32bf8e5e66b0d09abb7afbdc3725c26&sub=6F423B6DA3F146A7B59A7AEAD8B80565" target="_blank">
                        	动态SQL</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Spring核心概念</a></p>
                        <p><a href="updateNote.jsp" target="_blank">loC和AOP使用扩展</a></p>
                        <p><a href="updateNote.jsp" target="_blank">MyBatis与Spring的整合</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Spring配置补充</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Spring MVC体系结构和处理请求控制器</a></p>
                        <p><a href="updateNote.jsp" target="_blank">使用Spring MVC框架改造超市订单系统(一)</a></p>
                        <p><a href="updateNote.jsp" target="_blank">使用Spring MVC框架改造超市订单系统(二)</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Spring MVC扩展和SSM框架整合</a></p>

                        <p><strong>基于SSH框架的企业级应用开发</strong></p>
                        <p><a href="updateNote.jsp" target="_blank">Oracle数据库基础</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Oracle数据库应用</a></p>
                        <p><a href="updateNote.jsp" target="_blank">PL/SQL编程</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Hibernate入门</a></p>
                        <p><a href="updateNote.jsp" target="_blank">HQL实用技术</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Hibernate关联映射</a></p>
                        <p><a href="updateNote.jsp" target="_blank">HQL连接查询和注解</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Struct2入门</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Struct2配置详解</a></p>
                        <p><a href="updateNote.jsp" target="_blank">OGNL</a></p>
                        <p><a href="updateNote.jsp" target="_blank">拦截器</a></p>
                        <p><a href="updateNote.jsp" target="_blank">搭建SSH框架</a></p>

                        <p><strong>基于Hadoop生态系统的大数据解决方案</strong></p>
                        <p><a href="updateNote.jsp" target="_blank">Hadoop入门</a></p>
                        <p><a href="updateNote.jsp" target="_blank">HDFS实现分布式存储</a></p>
                        <p><a href="updateNote.jsp" target="_blank">MapReduce实现分布式运算</a></p>
                        <p><a href="updateNote.jsp" target="_blank">HBase数据库</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Hadoop综合应用</a></p>

                        <p><strong>使用ASP.NET MVC开发企业级应用</strong></p>
                        <p><a href="updateNote.jsp" target="_blank">进入ASP.NET MVC的世界</a></p>
                        <p><a href="updateNote.jsp" target="_blank">T-SQL编程</a></p>
                        <p><a href="updateNote.jsp" target="_blank">存储过程</a></p>
                        <p><a href="updateNote.jsp" target="_blank">ADO.NET进阶</a></p>
                        <p><a href="updateNote.jsp" target="_blank">基于三层架构搭建MVC系统</a></p>
                        <p><a href="updateNote.jsp" target="_blank">路由和数据传递</a></p>
                        <p><a href="updateNote.jsp" target="_blank">深入动作方法</a></p>
                        <p><a href="updateNote.jsp" target="_blank">自定义分页</a></p>
                        <p><a href="updateNote.jsp" target="_blank">强类型视图方法</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Entity FrameWork初体验</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Entity FrameWork综合应用</a></p>
                        <p><a href="updateNote.jsp" target="_blank">在ASP.NET MVC中使用Ajax</a></p>
                        <p><a href="updateNote.jsp" target="_blank">过滤器</a></p>
                        <p><a href="updateNote.jsp" target="_blank">安全、单元测试和部署</a></p>

                        <p><strong>Web前端框架与移动应用开发</strong></p>
                        <p><a href="updateNote.jsp" target="_blank">响应式布局</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Bootstrap样式</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Bootstrap组件</a></p>
                        <p><a href="updateNote.jsp" target="_blank">JavaScript插件</a></p>
                        <p><a href="updateNote.jsp" target="_blank">移动Web页面开发</a></p>
                        <p><a href="updateNote.jsp" target="_blank">移动Web特效开发</a></p>
                        <p><a href="updateNote.jsp" target="_blank">搭建Android开发环境</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Android UI的布局</a></p>
                        <p><a href="updateNote.jsp" target="_blank">Android UI的基础控件</a></p>

                    </div>

                </div>

                <div class="main-accp-python-note">
                        <div class="python-note">
                            <p title="笔记仅供参考">Python部分笔记</p>
                        </div>
                        <div class="python-note-font">
                            <p><strong>部分(仅供参考)</strong></p>
                            <p><a href="http://note.youdao.com/noteshare?id=9874de2f593db96b3785df258a91d229&sub=D96117FF4FBB4FF0B2E1DD90225B13F8" target="_blank">
                                基础知识</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=a50144e2e0aee16bc20f9db4bf23e3a1&sub=3C57D1E973944C518CB044E795A23D18" target="_blank">
                                变量、运算符、选择结构和循环</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=d3bf3be299af9644656cce09aa4ad582&sub=955BB84E8B8B4EB6B802E3221F661A52" target="_blank">
                                列表和元组</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=95cf27ff54b5ccb85df66a9681d72d53&sub=82E1CF4B36314F4BBEC926063C4D59E1" target="_blank">
                                字符串</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=44570a98a0362965685c4aa86b083776&sub=625ADC6D69B64197AD927F4B55B608C0" target="_blank">
                                序列</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=9eeb33e63ef21f67b2822635cab7de21&sub=4AD4A62B86E14C2793E9AE6866DDE7B2" target="_blank">
                                函数</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=0d76610ed3072fe4bdc0546cbd5a87ec&sub=5DB9F47617384904ADD3D73025628E66" target="_blank">
                                字典和集合</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=9c24b086c479c91c99b5a7ac470f668b&sub=12040F3F13D34FC9B3021E61C969D88D" target="_blank">
                                文件</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=709e7e924f42c68e6b04c5ac7dc69f98&sub=541CF17E97E14D1094C52DDEDF740731" target="_blank">
                                异常</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=9931f0a195d615e3627dc1817398becf&sub=FA2CD164A9F34A9BA6440C27B742B13A" target="_blank">
                                GUI入门</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=a06717ffec4e8f13fd3940c25e0d103d&sub=2860F2FB7EF4494EBECFE9F9D52C4967" target="_blank">
                                类和对象</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=bc1fbe1bbd0564649303007e5589983f&sub=29D4959FDF584D2CB314C80776A8C8DC" target="_blank">
                                魔法方法</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=ef1aecfbdff91cd9852c16bf0407107f&sub=81AB62F586B64A1E813EAEEDCE17ED45" target="_blank">
                                正则表达式</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=83c791970c159d3b76b79a06026b0c4c&sub=1CA071E3980C48F6B810550DFF71D4CC" target="_blank">
                                柯里化装饰器</a></p>
                            <p><a href="http://note.youdao.com/noteshare?id=0900c10fad66be07d16b5f64d34b3459&sub=4F54E64E720544428C2CC2FFBAD07EFA" target="_blank">
                                math库</a></p>
                        </div>
                </div>

                <div class="main-problem-java">
                        <div class="problem-java">
                            <p title="案例仅供参考">实用经典案例-Java</p>
                        </div>
                        <div class="problem-java-font">
                            <p><strong>框架集</strong></p>
                            <p><a href="updateNote.jsp" target="_blank">暂无</a></p>

                            <p><strong>普通案例和经典问题</strong></p>
                             <p><a href="http://note.youdao.com/noteshare?id=2dad9ba8a512ba26daf9b9ad4b0807f8&sub=1636E7511B2C4AE78702D3FE95E994BA" target="_blank">
                                Java Web新特性</a></p>                          
                            <p><a href="http://note.youdao.com/noteshare?id=ab4b2a097c1dd9ffc8976a2de218cdb8&sub=A538339842F54FFB99D94450EE3A8E8D" target="_blank">
                                关于web项目导入eclipse中出现的jsp页面报错</a></p>
                              <p><a href="http://note.youdao.com/noteshare?id=08e7f8fdf88f37ad59ce48ac34a022a9&sub=1B83C2BD15A242C3BC95F5CDF5C61F13" target="_blank">
                               在servlet类里面写一个模糊查询</a></p>
                            
                        </div>

                </div>

                <div class="main-problem-python">
                        <div class="problem-python">
                            <p title="案例仅供参考">实用经典案例-Python</p>
                        </div>
                        <div class="problem-python-font">
                                <p><strong>框架集</strong></p>
                                <p><a href="updateNote.jsp" target="_blank">暂无</a></p>

                                <p><strong>普通案例和经典问题</strong></p>
                                <p><a href="updateNote.jsp" target="_blank">暂无</a></p>
                        </div>

                </div>

                <div class="main-problem-web">
                        <div class="problem-web">
                            <p title="案例仅供参考">实用经典案例-web前端</p>
                        </div>
                        <div class="problem-web-font">
                                <p><strong>Vue.js</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=4f5e6281aea8a8efdab5a7c6f6f1a694&sub=1572EF94C5C74F8FA6DF4959579473D2" target="_blank">
                                    使用vue</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=51bbc44b09a3452dea26859133d4e968&sub=26A1AC7E8CD441FA964D8AF98E783AEA" target="_blank">
                                    vue的选择结构和循环</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=c2f326cd040c48e4a591e1dacd895a19&sub=54A8F6B85822485FB2C6F616F5E4FFFA" target="_blank">
                                    vue事件使用及修饰符</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=2246acd4f1bd90307971e06f8ea89942&sub=963098967A1146CBBACCD2421D3BD4D1" target="_blank">
                                    vue双向数据绑定和条件渲染</a></p>

                                <p><strong>HTML、CSS、JS、jQuery</strong></p>
                                <p><a href="http://note.youdao.com/noteshare?id=5bf0b41a7df30231239605dee1007077&sub=7C9AFD015A1A4CC0A56D845EA66D4950" target="_blank">
                                    display属性的table、table-cell的妙用</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=509d0eab54eb23b880886cab0f80722b&sub=80B1C2074DE44C429485EEC926B62E61" target="_blank">
                                    窗口变化使布局不乱</a></p>
                                <p><a href="http://note.youdao.com/noteshare?id=0794535c17e692f0056317506d834a59&sub=D30E60BD8EF24ED7B90169C4157E4548" target="_blank">
                                    HTML滚动条样式自定义（IE、FireFox、webkit）</a></p>

                        </div>

                </div>

                <div class="main-problem-db">
                        <div class="problem-db">
                            <p title="案例仅供参考">实用经典案例-数据库</p>
                        </div>
                        <div class="problem-db-font">
                                <p><strong>MySQL数据库</strong></p>
                                <p><a href="updateNote.jsp" target="_blank">暂无</a></p>

                                <p><strong>SQL Server数据库</strong></p>
                                <p><a href="updateNote.jsp" target="_blank">暂无</a></p>
                        </div>
                </div>

            </div>
        </div>
        <div class="main-center">

            <div class="move-ad">
                <div class="move-ad-main">
                    <img src="img/tz.png" alt=""  id="move-ad-main-pic" /><span>
                        通知：此网站更新搜索功能，支持模糊(关键字)搜索
                    </span> 
                </div>
            </div>
            <div class="main-center-content">
                <div class="main-center-content-top">
                    <div class="content-img">
                        <img src="img/logo.png" alt="" title="本站logo" style="cursor: pointer;">
                    </div>
                    <p><strong>网站介绍：</strong>本站仅为个人性质的软件信息收录站点，是纯共享、纯免费的网站，拒绝一切复杂的操作。</p>
                    <p><strong>使用注意：</strong>本站的共享笔记部分，仅作为参考。如果有使用问题欢迎联系本站管理员，联系方式(微、Q同号)：1583450815</p>
                </div>

                <div class="main-center-content-body">
						<div id="main-center-search-txt-content">
							<input type="text" id="main-center-search-txt" value="" placeholder='请输入关键字' />
							<!-- <input type="submit" id="main-center-search-btn" name="" value="搜   索" title="搜索" /> -->
							<button type="button" id="main-center-search-btn" name=""  title="搜索">搜   索</button>
						</div>
						<div class="main-center-search-a">
							<div class="main-center-search-img" style='width: 200px; height: 300px; margin: 0 auto; margin-top: 10px;'>
								<img src="img/hb.jpg" width="200px" height="300px" title='支付宝扫码领红包' style='cursor: pointer;'>
							</div>
						</div>
                </div>
                <div class="main-center-content-foot-left">
                    <img src="img/wx.jpg" alt="" title="扫码加作者微信" style="cursor: pointer;">
                </div>
                <div class="main-center-content-foot-right">
                    <img src="img/qq.jpg" alt="" title="扫码加作者QQ" style="cursor: pointer;">
                </div>
            </div>

        </div>

        <div class="main-right">
            <div class="xh-viewpager">
                <div class="xh-viewpager-img">
                    <a href=""><img src="img/1.jpg" alt=""  id="xh-viewpager-img1" class="xh-img" /></a>
                    <a href=""><img src="img/2.jpg" alt=""  id="xh-viewpager-img2" class="xh-img" /></a>
                    <a href=""><img src="img/3.jpg" alt=""  id="xh-viewpager-img3" class="xh-img" /></a>
                    <a href=""><img src="img/4.jpg" alt=""  id="xh-viewpager-img4" class="xh-img" /></a>
                    <a href=""><img src="img/5.jpg" alt=""  id="xh-viewpager-img5" class="xh-img" /></a>
                    <a href=""><img src="img/1.jpg" alt=""  id="xh-viewpager-img6" class="xh-img" /></a>
                </div>	
                <div class="xh-viewpager-btn">
                    <div class="xh-viewpager-btn-1  xh-btn" title="第1张" data="1" style="background-color: #f40; width:13px;height: 13px"></div>
                    <div class="xh-viewpager-btn-2  xh-btn" title="第2张" data="2"></div>
                    <div class="xh-viewpager-btn-3  xh-btn" title="第3张" data="3"></div>
                    <div class="xh-viewpager-btn-4  xh-btn" title="第4张" data="4"></div>
                    <div class="xh-viewpager-btn-5  xh-btn" title="第5张" data="5"></div>
                </div>
            </div>
            <div class="add-font">
               <a href="http://www.bjaccp.com/college.htm" target="_blank"> <img src="img/bdqn01.JPEG" alt="" title="北大青鸟佳音旗舰"></a>
            </div>
        </div>
        <div class="ad">
            <p>作者:谢辉</p>
            <p>联系方式:</p>
            <p>微、Q同号:</p>
            <p>15834-<br>50815</p>
            
        </div>

        <div class="foot">
            <p>本站创建日期：2019年1月7日。作者：谢辉</p>
        </div>
    </section>
    <script src="js/main.js"></script>
    <script src="js/ad.js"></script>
    <script src="js/moveAd.js"></script>
    <script src="js/viewpager.js"></script>
    <script src="js/love.js"></script>
    <script src="js/search.js"></script>

</body>
  
  
  
</html>
