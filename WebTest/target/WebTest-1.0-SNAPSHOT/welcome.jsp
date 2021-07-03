<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/28
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>


<%@page language="java"
        pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>欢迎登录</title>
</head>
<body>
<br><br><br><br><br>

<div class="jumbotron">
    <div class="container">

        <form action="Tomcat/LoginServ" method="post" class="form-horizontal" role="form"><br><br>
            <div class="form-group">

                <label class="col-sm-2 col-md-offset-4 control-label" ><span class="glyphicon glyphicon-user"></span>用户名：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" style="width:30%" name="username" value="" placeholder="请输入账户名"><br><br>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 col-md-offset-4 control-label"><span class="glyphicon glyphicon-ok-circle"></span>密码：</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" style="width:30%" name="password" value="" placeholder="请输入密码"><br><br>
                </div>

                <!--打勾-->
                <div class="checkbox col-sm-2 col-md-offset-6">
                    <label>
                        <input type="checkbox" name="save">保存密码
                    </label>
                </div>
            </div>
            <input type="submit" class="col-sm-1 col-md-offset-5 btn btn-primary" value="登陆">
            <input type="reset"  class="col-sm-1 col-md-offset-1 btn btn-primary" value="重置">
            <input type="button"  class="col-sm-1 col-md-offset-1 btn btn-primary" value="注册"
            onclick="window.location='User/register.jsp'">
        </form>
    </div>
</div>
</body>
</html>
