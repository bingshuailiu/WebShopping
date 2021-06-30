<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%! int fontSize; %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
</head>
<body>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
<%for ( fontSize = 1; fontSize <= 3; fontSize++){ %>
<font color="green" size="<%= fontSize %>">
    菜鸟教程
</font><br />
<%}%>

<% int a=0;
int b =0;
System.out.println(a+b);
%>
</body>
</html>