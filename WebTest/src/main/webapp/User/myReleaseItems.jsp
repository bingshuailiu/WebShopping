<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/7/2
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.example.WebTest.shopping_cart" %>
<%@ page import="Classes.shopping_cart_item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="oldImport.jsp" flush="true"></jsp:include>
  <title>我的商品</title>
</head>
<body>

<jsp:include flush="true" page="checkLogin.jsp"></jsp:include>
<jsp:include page="head.jsp" flush="true"></jsp:include>

<div class="container">
  <div class="row">
    <div class="col-sm-offset-4">
      <table class="altrowstable" id="alternatecolor">
        <tr>
          <th>商品名称</th>
          <th>数量</th>
          <th>单品价格</th>
          <th>点击确定取消发布物品</th>
        </tr>
        <%
          int x=-1;
          shopping_cart temp=new shopping_cart();
          ArrayList<Item> items=temp.getMyReleaseItems((String)session.getAttribute("username"));
          for(Item item:items){
            x++;
        %>
        <tr>
          <td><%=item.getName()%></td>
          <td><%=item.getCount()%></td>
          <td><%=item.getPrice()%></td>
          <td>
            <form action="../Tomcat/RetrieveItems" method="post">
              <input type="hidden" name="account" value="<%= session.getAttribute("username")%>"/>
              <input type="hidden" name="name" value="<%= item.getName()%>"/>
              <input type="hidden" name="price" value="<%= item.getPrice()%>"/>
              <input type="hidden" name="type" value="<%= item.getType()%>"/>
              <button type="button" onclick="change(-1,<%=item.getCount()%>,<%=x%>)">-</button>
              <input type="text" readonly="readonly" name="buyCount" id="buyCount<%=x%>" value="<%=item.getCount()%>">
              <button type="button" onclick="change(1,<%=item.getCount()%>,<%=x%>)">+</button>
              <input type="submit" value="确定"/>
            </form>
          </td>
        </tr>
        <% } %>
      </table>
    </div>
  </div>
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
