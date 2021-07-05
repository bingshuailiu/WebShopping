<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.shopping_cart_item" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    ArrayList<shopping_cart_item> items= (ArrayList<shopping_cart_item>) request.getAttribute("items"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript">
        function AddOrder() {
            var param=""; //它是用于拼接参数.
            var checkChoice = document.getElementsByName("checkChoose");
            for ( var i = 0; i < checkChoice.length; i++) {
                param+="id="+checkChoice[i].value+"&";
            }
            if(param!==""){
                param=param.substring(0,param.length-1);
                window.location="../Tomcat/AddOrder?"+param;
            }
        };
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
<header>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="logo"></div>
        <a href="ProductFindAllServlet">首页</a>
        <a href="javascript:void(0)" onclick="phone('手机')">手机</a>
        <a href="javascript:void(0)" onclick="phone('平板')">平板</a>
        <a href="javascript:void(0)" onclick="phone('笔记本')">笔记本</a>
        <a href="javascript:void(0)" onclick="phone('配件')">配件</a>
        <span class="slider-bar"></span>
        <i class="carts" onclick="tocart()"></i>

    </nav>
</header>

<section class="order">
    <div class="head">订单</div>
    <div class="title">
        <ul>
            <li>商品名称</li>
            <li>单价</li>
            <li>数量</li>
            <li>总价</li>
        </ul>
        </ul>
    </div>

    <ul class="order-content">
        <%
            double sum=0;
        for(shopping_cart_item item:items){
        %>
            <ul>
                <input type="hidden" name="checkChoose" value="<%=item.getBuyerAccount()+","+item.getSellerAccount()+","+
                    item.getName()+","+item.getBuyCount()+","+item.getPrice() %>">
                <li>

                </li>
                <li><div class="order-details"><%=item.getName()%></div></li>
                <li><span class="price"><%=item.getPrice()%></span></li>
                <li><span class="order-count"><%=item.getBuyCount()%></span></li>
            </ul>
        <%
                sum+=item.getPrice()*item.getBuyCount();
            }
        %>
        <div class="order-sum"><%=sum%></div>
    </ul>
    <div class="order-foot">
        <ul>
            <li><div class="order-adress">
                <input aria-label="送货地址" placeholder="送货地址" type="text">
            </div></li>
            <li><a class="sum-btn"	onclick="AddOrder()">生成订单</a></li>

        </ul>
    </div>
</section>
<aside class="aside-tool">
    <ul>
        <li class="customer">
            <a href="" target=_blank
               clickid=guanwang_navigation_customer>联系客服</a>
        </li>
        <li class="top"></li>
    </ul>
</aside>
<footer>
    <div>
        <ul>
            <li>开发人员</li>
            <li>刘冰帅</li>
        </ul>
    </div>
</footer>

</body>
</html>