<%@ page import="Classes.User" %>
<%@ page import="com.example.WebTest.ControlUser" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.Order" %>
<%@ page import="com.example.WebTest.OrderControl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../User/import.jsp" flush="true"></jsp:include>
    <title>所有订单</title>
</head>
<body>
<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>

<%
    int allRecord=0;//总的记录条数,不包含查询后的
    int totalRecord=0;//总的记录条数,包含查询后的
    int totalPage=1;//总的页面数，包含查询后的
    int pageIndex=1;//当前页面号，用于控制页面翻转，默认为1
    ArrayList<Order> orders = null;
    OrderControl orderControl = null;
    try {
        orderControl=new OrderControl();
        allRecord=orderControl.getOrderCount();
        totalRecord=orderControl.getOrderCount();
        totalPage=(totalRecord-1)/10+1;
        if(request.getParameter("keyword")!=null){
            String keyword=request.getParameter("keyword");
            orders=orderControl.getRelevantOrders(keyword);
            totalRecord=orders.size();
            totalPage=(totalRecord-1)/10+1;
        }
        else if(request.getParameter("pageIndex")!=null){//不是第一次加载
            //要做下数据类型转换
            pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
            orders=orderControl.getOrders(pageIndex);
        }else{//第一次加载
            orders=orderControl.getOrders(pageIndex);//获取一页的事件记录集,共10条
        }
        session.setAttribute("orders",orders);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>

<jsp:include page="head.jsp" flush="true"></jsp:include>

<div class="container">
    <div class="row">
        <div class="col-sm-offset-1">
            <div id="main">
                <div id="content">
                    <form id="searchForm" name="searchForm" action="order.jsp" method="get">
                        <input type="hidden" name="pageIndex" id="pageIndex" value="1">
                        <div id="search">
                            <div class="center"></div>
                            <input type="text" class="search" id="keyword" name="keyword" placeholder="请输入要查询的记录">
                            <button type="button" onclick="searchKeyword()">搜索</button>
                        </div>
                    </form>
                    <table class="altrowstable" id="alternatecolor">
                        <tr>
                            <th width="15%">买家用户名</th>
                            <th width="15%">卖家用户名</th>
                            <th width="20%">下单时间</th>
                            <th width="20%">商品名称</th>
                            <th width="10%">商品单价</th>
                            <th width="20%">购买数量</th>
                        </tr>
                        <%
                            int count=0;
                            if(orders!=null){
                                System.out.println("Orders非空"+orders.size());
                                for(Order order : orders){
                                    count++;
                                    System.out.println(order);
                        %>

                        <tr>

                            <td class="center"><%= order.getBuyerAccount() %></td>
                            <td class="center"><%= order.getSellerAccount() %></td>
                            <td class="center"><%= order.getDate() %></td>
                            <td class="center"><%= order.getName() %></td>
                            <td class="center"><%= order.getPrice() %></td>
                            <td class="center"><%= order.getBuyCount() %></td>
                        </tr>
                        <%
                                }
                            }
                        %>
                        <tr class="alt" >
                            <td class="center" colspan="7">
                                共<%= totalRecord %>条记录&nbsp;&nbsp;&nbsp;
                                共<%= totalPage %>页&nbsp;&nbsp;&nbsp;
                                每页10条&nbsp;&nbsp;&nbsp;
                                当前第<%= pageIndex %>页&nbsp;&nbsp;&nbsp;
                                <a href="javascript:void(0);" rel="external nofollow" rel="external nofollow" class="turnPage" onclick="turnTopPage()">上一页</a>&nbsp;&nbsp;&nbsp;
                                <a href="javascript:void(0);" rel="external nofollow" rel="external nofollow" class="turnPage" onclick="turnBottomPage()">下一页</a>&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                    </table>
                </div><!-- end: content 内容 -->
            </div><!-- end: main 主要部分 -->


        </div>
    </div>


</div>

</body>

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
</script>
</html>
