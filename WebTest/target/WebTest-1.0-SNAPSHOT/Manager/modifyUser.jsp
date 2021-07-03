<%@ page import="com.example.WebTest.UserInformation" %>
<%@ page import="Classes.User" %><%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/3
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../User/import.jsp" flush="true"></jsp:include>
    <title>修改用户信息</title>
</head>
<body>
<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>
<jsp:include page="head.jsp" flush="true"></jsp:include>

<%
    UserInformation temp=new UserInformation();
    User user=temp.getUserInformation(request.getParameter("username"));
%>

<div class="wrapper wrapper-content">

    <form class="form-horizontal" action ="../Tomcat/ChangeUserInformation" method="post">

        <input type="hidden" name="isManager" value="true">
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">账号:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="" readonly="readonly" value="<%=user.getAccount()%>" name = "account">
            </div>
        </div>

        <div class="form-group">
            <label for="" class="col-sm-2 control-label">密码:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="" name = "password" maxlength="5"  value="<%=user.getPassword()%>">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">性别:</label>
            <div class="col-sm-10">
                <input type="text" name="sex" class="form-control"  readonly="readonly" value="<%=user.getSex()%>">
            </div>
        </div>

        <div class="form-group">
            <label for="" class="col-sm-2 control-label">手机号:</label>
            <div class="col-sm-10">
                <input type="text" value="<%=user.getPhone()%>" class="form-control" name= "phone">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">邮箱:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control"  placeholder="" name = "email" maxlength="5"  value="<%=user.getEmail()%>">
            </div>
        </div>
        <button type="submit" class="form-control" class="btn btn-primary">修改个人信息</button>
    </form>
</div>
</body>
</html>
