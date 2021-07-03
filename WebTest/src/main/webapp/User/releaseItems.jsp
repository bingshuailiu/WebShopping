<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 8:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="import.jsp" flush="true"></jsp:include>
    <title>发布商品</title>
</head>
<body>
<jsp:include flush="true" page="checkLogin.jsp"></jsp:include>
<%
    if(request.getAttribute("ReleaseStatus")!=null){
        String result= (String) request.getAttribute("ReleaseStatus");
        System.out.println(result);
        if(result.equals("true")){
%>
<script type="text/javascript" language="javascript">
    alert("成功发布商品！");
</script>
<% }else { %>
<script type="text/javascript" language="javascript">
    alert("发布失败！");
</script>
<% } }%>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col-sm-offset-4">
            <form action="../Tomcat/ReleaseItems" method="post">
                <table class="altrowstable" id="alternatecolor">
                <tr> <td class="right">商品名称</td> <td><input type="text" name="name"/></td></tr>
                <tr> <td class="right">商品类型</td><td>
                    <jsp:include page="../ItemsClassification.jsp" flush="true"></jsp:include>
                </td></tr>
                <tr><td class="right">商品数量</td><td> <input type="text" name="count"/></td> </tr>
                <tr><td class="right">商品单价</td><td><input type="text" name="price"/>
                    <input type="hidden" name="username" value="<%= session.getAttribute("username")%>"/></td></tr>
                <tr><td></td><td><input type="submit" value="发布"/><input type="reset" value="重置"></td>  </tr>
                </table>
            </form>
        </div>
    </div>
</div>


</body>
</html>
