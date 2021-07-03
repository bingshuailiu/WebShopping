<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/2
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  if(session.getAttribute("username")==null){
%>
<script>
  window.location="../welcome.jsp";
</script>

<% } %>
