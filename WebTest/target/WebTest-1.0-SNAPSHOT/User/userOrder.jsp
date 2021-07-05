<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.WebTest.OrderControl" %>
<%@ page import="Classes.Order" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    OrderControl temp=new OrderControl();
    ArrayList<Order> orders=temp.getUserOrder((String)session.getAttribute("username"));
    int x=-1;
%>
<html>
<head>
    <jsp:include page="import.jsp" flush="true"></jsp:include>
    <title>我的订单</title>
</head>
<body>
<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>

<jsp:include page="head.jsp" flush="true"></jsp:include>

<div class="container">
    <div class="row">
        <div class="col-sm-offset-4">
            <table class="altrowstable" id="alternatecolor">
                <tr>
                    <th>商品名称</th>
                    <th>数量</th>
                    <th>单品价格</th>
                    <th>下单时间</th>
                </tr>
                <%

                    for(Order order :orders){
                        x++;
                %>
                <tr>
                    <td><%=order.getName()%></td>
                    <td><%=order.getBuyCount()%></td>
                    <td><%=order.getPrice()%></td>
                    <td><%=order.getDate()%></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
</div>
</body>
</html>
