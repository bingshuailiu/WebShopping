<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/3
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="nav1">
    <div id="nav2">
        <ul>
            <li><a href="../Manager/Manager.jsp">首页</a></li>
        </ul>
        <div class="col-sm-offset-9">
            <p>管理员：<%= session.getAttribute("manager")%>
                <a href="../User/logout.jsp">注销</a>
            </p>
        </div>
    </div>
</div>