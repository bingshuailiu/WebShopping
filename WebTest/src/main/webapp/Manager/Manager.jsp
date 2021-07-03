<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.User" %>
<%@ page import="com.example.WebTest.SQL" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.WebTest.ControlUser" %><%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../User/import.jsp" flush="true"></jsp:include>
    <title>管理员</title>
</head>
<body>

<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>
<%
        int allRecord=0;//总的记录条数,不包含查询后的
        int totalRecord=0;//总的记录条数,包含查询后的
        int totalPage=1;//总的页面数，包含查询后的
        int pageIndex=1;//当前页面号，用于控制页面翻转，默认为1
        ArrayList<User> users = null;
    ControlUser controlUser = null;
    try {
        controlUser=new ControlUser();
        allRecord=controlUser.getUserCount();
        totalRecord=controlUser.getUserCount();
        totalPage=(totalRecord-1)/10+1;
        if(request.getParameter("pageIndex")!=null){//不是第一次加载
            //要做下数据类型转换
            pageIndex=Integer.parseInt(request.getParameter("pageIndex"));
            users=controlUser.getUsers(pageIndex);
        /*if(request.getParameter("keyword")!=null){
            String keyword=request.getParameter("keyword");
            records=db.getRecords(pageIndex,keyword);//获取查询内容一页的事件记录集,共10条
            totalRecord=db.getRecordCount(keyword);
            totalPage=(totalRecord-1)/10+1;
        }else{
            records=db.getRecords(pageIndex);//获取一页的事件记录集,共10条
        }*/
        }else{//第一次加载
            users=controlUser.getUsers(pageIndex);//获取一页的事件记录集,共10条
        }
        session.setAttribute("users",users);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>

<jsp:include page="checkLogin.jsp" flush="true"></jsp:include>
<jsp:include page="head.jsp" flush="true"></jsp:include>

<div class="container">
    <div class="row">
        <div class="col-sm-offset-1">
            <div id="main">
                <div id="content">
                    <form id="searchForm" name="searchForm" action="Manager.jsp" method="get">
                        <input type="hidden" name="pageIndex" id="pageIndex" value="1">
                        <%--<div id="search">
                            <div class="center"></div>
                            <input type="text" class="search" id="keyword" name="keyword" placeholder="请输入要查询的记录">
                            <img src="img/search.jpg" onclick="searchKeyword();" class="button">
                        </div>--%>
                    </form>
                    <table class="altrowstable" id="alternatecolor">
                        <tr>
                            <th width="5%">序号</th>
                            <th width="20%">用户名</th>
                            <th width="20%">密码</th>
                            <th width="20%">电话</th>
                            <th width="7%">性别</th>
                            <th width="20%">邮件</th>
                            <th width="8%">选项</th>
                        </tr>
                        <%
                            int count=0;
                            if(users!=null){
                                for(User user : users){
                                    count++;
                        %>

                        <tr>

                            <td class="center"><%= count %></td>
                            <td class="center"><%= user.getAccount() %></td>
                            <td class="center"><%= user.getPassword() %></td>
                            <td class="center"><%= user.getPhone() %></td>
                            <td class="center"><%= user.getSex() %></td>
                            <td class="center"><%= user.getEmail() %></td>
                            <form id="deleteForm<%=count%>" action="../Tomcat/DeleteUserCascade" method="post">
                                <input type="hidden" name="username" value="<%=user.getAccount()%>">
                            </form>
                            <td>
                                <a href="javascript:void(0);" onclick="deleteSubmit(<%=count%>)">删除</a>
                                <a href="modifyUser.jsp?username=<%=user.getAccount()%>">修改</a>
                            </td>

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
    function deleteSubmit(label){
        var temp="deleteForm"+label;
        document.getElementById(temp).submit();
    }
</script>
</html>
