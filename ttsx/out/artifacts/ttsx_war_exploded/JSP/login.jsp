<%@ page import="com.utils.CodeUtils" %><%--
  Created by IntelliJ IDEA.
  User: 86173
  Date: 2019/1/25
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <script>
        var xmlhttp;
        function check(){
            var url = "RefreshServlet";
            xmlhttp =new XMLHttpRequest();
            xmlhttp.onreadystatechange=checkResult; //响应函数
            xmlhttp.open("GET",url,true);   //设置访问的页面
            xmlhttp.send(null);  //执行访问
        }
        function checkResult(){
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
                document.getElementById('code').value = xmlhttp.responseText;
        }
    </script>
</head>
<body>
    <%
        String code = CodeUtils.getCode();
        pageContext.setAttribute("code",code);
    %>
    <div class="container" style="width: 960px;height: 130px;">
        <a href="HomeServlet"><img src="../images/logo02.png" alt="" style="margin-top: 24px;"></a>
    </div>
    <div style="width: 1519px;height: 480px;background-color: #518d17;">
        <div class="container" style="width: 960px;height: 480px;">
            <img class="pull-left" src="../images/login_banner.png" alt="">
            <form action="LoginServlet" style="width: 370px;height: 380px;background-color: #fdfdfe;margin-top: 50px;" class="pull-right" method="post">
                <h3 class="text-muted pull-left" style="margin-left: 80px;">用户登录</h3>
                <h4 class="text-muted pull-right" style="margin: 25px 80px 0 0;"><a href="register.jsp">立即注册</a></h4>
                <br><br><hr>
                <input type="text" class="form-control" name="name" placeholder="请输入用户名" style="width: 308px;margin-left: 32px;"><br>
                <input type="password" class="form-control" name="pass" placeholder="请输入密码" style="width: 308px;margin-left: 32px;"><br>
                <input type="text" class="form-control" placeholder="请输入验证码" style="width: 154px;margin-left: 32px;"><br>
                <input type="button" class="form-control" id="code" value="${code}" style="width: 100px;margin: -54px 0 0 205px;" onclick="check()"><br>
                <input type="checkbox" style="margin-left: 32px;"><span class="text-muted">记住用户名</span>
                <span class="text-muted pull-right" style="margin-right: 32px;"><a href="#">忘记密码</a></span><br><br>
                <input type="submit" class="form-control bg-success" value="登录" style="width: 308px;margin-left: 32px;">
            </form>
        </div>
    </div>
    <div style="width: 1519px;height: 100px;margin:30px 0;border-top:2px solid #42ac46" class="container text-center">
        <br>
        <h6>关于我们 | 联系我们 | 招聘人才 | 友情链接</h6>
        <h6>CopyRight © 2016 北京******技术有限公司 All Rights Reserved</h6>
        <h6>电话：010-******* 京ICP备18051957号-1</h6>
    </div>
</body>
</html>
