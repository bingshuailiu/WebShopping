<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/3
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("manager")==null){
%>
<script>
    window.location="../welcome.jsp";
</script>

<% } %>
