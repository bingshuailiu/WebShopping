<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="Classes.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.shopping_cart_item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String tempIMG="../img/9beed483ba60c3ba71e72ad1cdb6d653.png";
%>
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
%>
    submit();
    <% }else{
        System.out.println("返回成功");
    }%>
</script>


<jsp:include flush="true" page="head.jsp"></jsp:include>
<section class="sec2">
    <form id="searchForm" name="searchForm" action="Manager.jsp" method="get">
        <input type="hidden" name="pageIndex" id="pageIndex" value="1">
        <div id="search">
            <div class="center"></div>
            <input type="text" class="search" id="keyword" name="keyword" placeholder="请输入要查询的记录">
            <%--<img src="" onclick="searchKeyword();" class="button">--%>
            <button type="button" onclick="searchKeyword()">搜索</button>
        </div>
    </form>
</section>
<section class="page">
    <% if(request.getAttribute("items")!=null){
    %>
<%--
    <aside id="aside" class="panel-group aside-menu">
        <h3 class="type">${c1name }</h3>
        <c:forEach items="${c2name}" var="p" varStatus="vs">
            <dl class="panel panel-default">
                <dt data-toggle="collapse" data-target=".${vs.index}" aria-expanded="true" data-parent="#aside" onclick="selsct(${p.code},${vs.index})">
                    <i></i><span class="collapse-btn">${p.name }</span>
                </dt>
                <div class="${vs.index} collapse" id="${vs.index}">

                </div>
            </dl>
        </c:forEach>
    </aside>
--%>
    <div class="content">
        <%
            Object temp=request.getAttribute("items");
            ArrayList<Item> items=(ArrayList<Item>) temp;
            int x=-1;
            for(Item item:items){
                x++;
                if(item.getAccount().equals(session.getAttribute("username"))) continue;
        %>
        <div class="product">
            <img src="<%=tempIMG%>" onclick="findProductById('${p.id}')">
            <span class="brand"><%=item.getName()%></span>
            <span class="title">title</span>
            <span class="price"><%=item.getPrice()%></span>
            <a href=""><em class="fast-buy"></em></a>
        </div>
        <% } %>

    </div>


<%--    <ul class="pagination">
        <li><a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=1&currentPage=${pb1.currentPage}">首页</a></li>
        <li><c:if test="${pb1.pageNum==1}"><a>上一页</a></c:if></li>
        <li><c:if test="${pb1.pageNum!=1}"><a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.pageNum-1}&currentPage=${pb1.currentPage}">上一页</a></c:if></li>
        <c:if test="${pb1.pageNum==pb1.totalPage}"><li><a>下一页</a></li><li><a>尾页</a></li></c:if>
        <li><c:if test="${pb1.pageNum!=pb1.totalPage}">
            <a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.pageNum+1 }&currentPage=${pb1.currentPage}">下一页</a>
            <a href="${pageContext.request.contextPath}/ProductFindByPageCodeServlet?pageNum=${pb1.totalPage }&currentPage=${pb1.currentPage}">尾页</a>
        </c:if></li>
    </ul>--%>
    <% } %>
</section>


<%--<div class="container">
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
</div>--%>
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
<%--
<script type="text/javascript">
    var pageIndex=<%=pageIndex %>;
    var totalPage=<%=totalPage %>;
    console.log(pageIndex);
    //上一页
    function turnTopPage(){
        if(pageIndex===1){
            return;
        }else{
            document.getElementById("pageIndex").value=pageIndex-1;
            document.getElementById("searchForm").submit();
        }
    }
    //下一页
    function turnBottomPage(){
        if(pageIndex>=totalPage){
            return;
        }else{
            document.getElementById("pageIndex").value=pageIndex+1;
            document.getElementById("searchForm").submit();
        }
    }
    function searchKeyword(){
        document.getElementById("pageIndex").value=1;
        document.getElementById("searchForm").submit();
    }
    function deleteSubmit(label){
        var temp="deleteForm"+label;
        document.getElementById(temp).submit();
    }
</script>
--%>
</body>
</html>
