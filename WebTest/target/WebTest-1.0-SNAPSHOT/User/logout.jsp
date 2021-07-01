<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/30
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("../welcome.jsp");
%>
