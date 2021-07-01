<%--
  Created by IntelliJ IDEA.
  User: 沐夏季风
  Date: 2021/6/29
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>

<html>
<head>
  <style >	<!-- 元素的设计： -->
  td.right{			<!-- 名字 -->
    text-align: right;height: 25px;						<!-- 文本-对齐属性：右对齐；表格高度：25px -->
  }														<!-- align: left(靠左)，center(居中)，right(靠右) -->

  </style>
</head>
<body>
<h3>用户注册</h3>
<form action="Tomcat/Register" method="post"><table>				<!-- form创建表单，method：提交方式 -->
  <!-- class="right" （选择表格的元素）-->
  <tr> <td class="right">用户名：</td> <td><input type="text" name="username"/></td></tr>
  <tr> <td class="right">密码：</td><td><input type="password" name="password"/></td></tr>
  <tr><td class="right">确认密码：</td><td> <input type="password" name="repassword"/></td> </tr>
  <tr>
    <td class="right">性别：</td>
    <td>
      <input type="radio" name="sex" value="男" checked="checked"/>男 		<!-- checked="checked"默认选择项 -->
      <input type="radio" name="sex" value="女" /> 女
    </td>
  </tr>
  <tr><td class="right">手机号码：</td><td><input type="text" name="phone"/></td></tr>
  <tr><td class="right">电子邮箱：</td><td><input type="text" name="email"/></td></tr>
  <tr><td></td><td><input type="submit" value="注册"/><input type="reset" value="重置"></td>  </tr>

</table></form>
</body>
</html>
