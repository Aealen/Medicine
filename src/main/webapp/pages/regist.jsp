<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Medicine | Log-in</title>

    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">

    <script>
        window.onLoad=function (){
            $("#submit").attr('disabled',true);
            $("#Tipalert").hide();
        }
        function repwd(){
            console.log("repwd.run")
            var pwd1=document.getElementById("password").value;
            var pwd2=document.getElementById("repassword").value;
            if (pwd1!=pwd2&&pwd2!=""){
                $("#Tipalert").show().text("两次密码输入不一致");
                $("#submit").attr('disabled',true);
            }else {
                $("#Tipalert").hide();
                $("#submit").attr('disabled',false);
            }
        }
        function checkName(){
            var username=document.getElementsByName("username")[0].value;
            if (username==""){
                $("#Tipalert").show().text("用户名不能为空");
                $("#submit").attr('disabled',true);
            }else {
                $("#Tipalert").hide();
                $("#submit").attr('disabled',false);
            }
        }
        function checkMail(){
            var email=document.getElementsByName("email")[0].value;
            if (emailusername==""){
                $("#Tipalert").show().text("邮箱不能为空");
                $("#submit").attr('disabled',true);
            }else {
                $("#Tipalert").hide();
                $("#submit").attr('disabled',false);
            }
        }
        function checkLocation(){
            var currl=document.getElementsByName("currLocation")[0].value;
            if (currl==""){
                $("#Tipalert").show().text("所在地不能为空");
                $("#submit").attr('disabled',true);
            }else {
                $("#Tipalert").hide();
                $("#submit").attr('disabled',false);
            }
        }
    </script>

</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="all-admin-index.html"><b>Medicine</b>后台管理</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">注册账号</p>


        <form action="${pageContext.request.contextPath}/user/regist"
              method="post">
            <div class="form-group has-feedback">
                <input type="text" name="username" class="form-control" placeholder="用户名" onchange="checkName()">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="password" name="password" class="form-control" placeholder="密码" onchange="repwd()">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="repassword" name="repassword" class="form-control" placeholder="再次输入密码" onchange="repwd()">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="email" class="form-control" placeholder="邮箱" onblur="checkMail()">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="currLocation" class="form-control" placeholder="所在地点" onblur="checkLocation()">
                <span class="glyphicon glyphicon-map-marker form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                出生日期:
                <input type="date" name="birthDay"  class="form-control" placeholder="出生日期">
            </div>
            <div class="row">

                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" id="submit" class="btn btn-primary btn-block btn-flat">注册</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
<%--        <script type="text/javascript">--%>
<%--            function validate(){--%>
<%--                var pwd1=document.getElementById("password").value--%>
<%--                var pwd2=document.getElementById("repassword").value--%>
<%--                if (pwd1!=pwd2){--%>
<%--                    document.getElementById("alert").innerHTML="<h6 style='color: red'>两次输入密码不一致</h6><br>"--%>
<%--                    document.getElementById("submit").disabled=true--%>
<%--                }--%>
<%--            }--%>
<%--        </script>--%>


        <a href="/pages/login.jsp">返回登陆</a><br>
        <h6 style="color: red">${showstatus}</h6><br>
        <span id="Tipalert" style="color: red"></span>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass : 'icheckbox_square-blue',
            radioClass : 'iradio_square-blue',
            increaseArea : '20%' // optional
        });
    });
</script>
</body>


</html>