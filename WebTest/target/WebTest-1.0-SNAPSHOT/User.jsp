<%@ page import="Classes.Item" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>User Page</title>
</head>
<body>
<form id="form1" action="Tomcat/ItemsInformation" method="post">
</form>



<script>
    function submit(){
        document.getElementById("form1").submit();
    }
    <% if(request.getAttribute("items")==null){
        System.out.println("没有商品信息，即将调用数据库");
%>  submit()
    <% }else{
        System.out.println("返回成功");
    }%>

</script>
<%
    if(session.getAttribute("username")==null){
        response.sendRedirect("welcome.jsp");
    }
%>
<div class="container">
    <div class="row">
        <div class="col-sm-offset-10">
            <p>用户名：<%= session.getAttribute("username")%>
                <a href="logout.jsp">注销</a>
            </p>
        </div>
    </div>
    <% if(request.getAttribute("items")!=null){
    %>
    <div class="row">
        <div class="col-sm-offset-3">
            <table>
                <tr>
                    <th>商品名称</th>
                    <th>剩余数量</th>
                    <th>单品价格</th>
                    <th>购买</th>
                </tr>
                <%
                    Object temp=request.getAttribute("items");
                    ArrayList<Item> items=(ArrayList<Item>) temp;
                    for(Item item:items){

                %>
                <tr>
                    <td><%=item.getName()%></td>
                    <td><%=item.getCount()%></td>
                    <td><%=item.getPrice()%></td>
                    <td><input type="checkbox" name="item" value="computer"></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    <% } %>

</div>
</body>
</html>
