<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/2
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="nav1">
  <div id="nav2">
    <ul>
      <li><a href="../User/User.jsp">首页</a></li>
      <li><a href="../User/shopping_cart.jsp">购物车</a></li>
      <li><a href="../User/releaseItems.jsp">发布商品</a></li>
      <li><a href="../User/myReleaseItems.jsp">我的商品</a></li>
      <li><a href="../User/myReleaseItems.jsp">我的订单</a></li>
    </ul>
    <div class="col-sm-offset-9">
      <p>用户名：<%= session.getAttribute("username")%>
        <a href="../User/UserInformation.jsp">个人信息</a>
        <a href="../User/logout.jsp">注销</a>
      </p>
    </div>
  </div>
</div>
