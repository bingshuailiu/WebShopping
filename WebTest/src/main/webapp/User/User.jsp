<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="Classes.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="import.jsp" flush="true"></jsp:include>
    <title>User Page</title>
</head>
<body>

<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>

<form id="form1" action="../Tomcat/ItemsInformation" method="post">
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

<% if(request.getAttribute("currentItems")!=null){

}
%>

<jsp:include flush="true" page="head.jsp"></jsp:include>
<div class="container">
    <% if(request.getAttribute("items")!=null){
    %>
    <div class="row">
        <div class="col-sm-offset-4">
            <table class="altrowstable" id="alternatecolor">
                <tr>
                    <th>商品名称</th>
                    <th>剩余数量</th>
                    <th>单品价格</th>
                    <th>点击确定添加购物车</th>
                </tr>
                <%
                    Object temp=request.getAttribute("items");
                    ArrayList<Item> items=(ArrayList<Item>) temp;
                    int x=-1;
                    for(Item item:items){
                        x++;
                        if(item.getAccount().equals(session.getAttribute("username"))) continue;
                %>
                <tr>
                    <td><%=item.getName()%></td>
                    <td><%=item.getCount()%></td>
                    <td><%=item.getPrice()%></td>
                    <td>
                        <form action="../Tomcat/shopping_cart" method="post">
                            <input type="hidden" name="buyerAccount" value="<%= session.getAttribute("username")%>"/>
                            <input type="hidden" name="sellerAccount" value="<%= item.getAccount()%>"/>
                            <input type="hidden" name="name" value="<%= item.getName()%>"/>
                            <input type="hidden" name="price" value="<%= item.getPrice()%>"/>
                            <button type="button" onclick="change(-1,<%=item.getCount()%>,<%=x%>)">-</button>
                            <input type="text" readonly="readonly" name="buyCount" id="buyCount<%=x%>" value="0">
                            <button type="button" onclick="change(1,<%=item.getCount()%>,<%=x%>)">+</button>
                            <input type="submit" value="确定"/>
                        </form>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
    <% } %>
</div>
<script type="text/javascript">
    function change(t,itemCount,label){
        var temp="buyCount"+label;
        var  x=document.getElementById(temp);
        var  a= x.value;
        if(t===1){
            if(a<itemCount) a++;
        }
        else{
            if(a>0) a--;
        }
        x.value=a;
    }
</script>
</body>
</html>
