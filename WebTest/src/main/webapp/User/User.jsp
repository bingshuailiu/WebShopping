<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="Classes.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.WebTest.ControlItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String tempIMG="img/9beed483ba60c3ba71e72ad1cdb6d653.png";
%>
<html>
<head>
    <jsp:include page="import.jsp" flush="true"></jsp:include>
    <title>User Page</title>
</head>
<body>
<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>

<%
    int allRecord=0;//总的记录条数,不包含查询后的
    int totalRecord=0;//总的记录条数,包含查询后的
    int totalPage=1;//总的页面数，包含查询后的
    int pageIndex=1;//当前页面号，用于控制页面翻转，默认为1
    ArrayList<Item> items = null;
    ControlItem controlItem = null;
    try {
        controlItem=new ControlItem((String) session.getAttribute("username"));
        allRecord=controlItem.getItemCount();
        totalRecord=controlItem.getItemCount();
        totalPage=(totalRecord-1)/8+1;

            if(request.getParameter("keyword")!=null){
            String keyword=request.getParameter("keyword");
            items=controlItem.getItems(pageIndex,keyword);//获取查询内容一页的事件记录集,共10条
            totalRecord=controlItem.getItemCount(keyword);
            totalPage=(totalRecord-1)/8+1;
            }else if(request.getParameter("pageIndex")!=null){//不是第一次加载
                //要做下数据类型转换
                pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
                items=controlItem.getItems(pageIndex);
                if(request.getParameter("type")!=null){
                    System.out.println("type不为null");
                    String type=request.getParameter("type");
                    items=controlItem.getRelevantTypeItems(type);
                    totalRecord=controlItem.getTypeItemCount(type);
                    totalPage=(totalRecord-1)/8+1;
                    System.out.println("totalRecord:"+totalRecord);
                    for(Item item:items){
                        System.out.println(item);
                    }
                }else{
                items=controlItem.getItems(pageIndex);//获取一页的事件记录集,共10条
            }
        }else{//第一次加载
            items=controlItem.getItems(pageIndex);//获取一页的事件记录集,共12条
        }
        session.setAttribute("items",items);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>


<jsp:include flush="true" page="head.jsp"></jsp:include>
<section class="sec1">
    <form id="searchForm" name="searchForm" action="User.jsp" method="get">
        <input type="hidden" name="pageIndex" id="pageIndex" value="1">
        <div id="search">
            <div class="center"></div>
            <input type="text" class="search" id="keyword" name="keyword" placeholder="请输入要查询的记录">
            <button type="button" onclick="searchKeyword()">搜索</button>
        </div>
    </form>
</section>

<%
String []type={"数码类", "食品","化妆品",
"生活用品","学习用品","服饰","其他"};
int x=1;
%>

<section class="page">
    <aside id="aside" class="panel-group aside-menu">
        <h3 class="type">分类</h3>
        <%  for(String str:type){ %>
        <dl class="panel panel-default">
            <dt data-toggle="collapse" aria-expanded="true" data-parent="#aside" onclick="divideByType(<%=x%>)">
                <form id="type<%=x%>" name="divideForm" action="User.jsp" method="get">
                    <input type="hidden" name="pageIndex" value="1">
                    <input type="hidden" name="type" value="<%=type[x-1]%>">
                </form>
                <i></i><span class="collapse-btn"><%=type[x++-1]%></span>
            </dt>
        </dl>
<% } %>
    </aside>
    <div class="content">
        <%
            for(Item item:items){
        %>
        <div class="product">
            <img src="${pageContext.request.contextPath}/<%=tempIMG%>" onclick="findProductById('${p.id}')">
            <span class="brand"><%=item.getName()%></span>
            <span class="title"></span>
            <span class="price"><%=item.getPrice()%></span>
            <a href=""><em class="fast-buy"></em></a>
        </div>
        <% } %>
    </div>

    <ul class="pagination">
        <li><a href="User.jsp">首页</a></li>
        <li><a href="javascript:void(0);" rel="external nofollow" rel="external nofollow" class="turnPage" onclick="turnTopPage()">上一页</a>&nbsp;&nbsp;&nbsp;
            <a href="javascript:void(0);" rel="external nofollow" rel="external nofollow" class="turnPage" onclick="turnBottomPage()">下一页</a>&nbsp;&nbsp;&nbsp;
        </li>
    </ul>
</section>


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
    function divideByType(x){
        var z="type"+x;
        document.getElementById("pageIndex").value=1;
        document.getElementById(z).submit();
    }

    function deleteSubmit(label){
        var temp="deleteForm"+label;
        document.getElementById(temp).submit();
    }
</script>
</body>
</html>
