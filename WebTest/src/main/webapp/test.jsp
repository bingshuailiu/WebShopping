<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String tempIMG="9beed483ba60c3ba71e72ad1cdb6d653.png";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Personal Center</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
<header>
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="logo"></div>
        <a href="../User/User.jsp">首页</a>
        <a href="../User/shopping_cart.jsp">购物车</a>
        <a href="../User/releaseItems.jsp">发布商品</a>
        <a href="../User/myReleaseItems.jsp">我的商品</a>
        <a href="../User/userOrder.jsp">我的订单</a>
        <span class="slider-bar"></span>
        <i class="carts"></i>
        <span>
            <h4 class="signin" data-toggle="modal" data-target="#log-wrapper"
            href="../User/UserInformation.jsp">用户信息</h4>
            	<h4 class="signup" data-toggle="modal" data-target="#log-wrapper"
                href="../User/logout.jsp">注销</h4>

		</span>
    </nav>
</header>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="img/22d94f6e50d98f6f68308814ff9795e2.jpg" alt="..." onclick="phone('手机')">
            <div class="carousel-caption">

            </div>
        </div>
        <div class="item">
            <img src="img/macbookpro_large.jpg" alt="..." onclick="phone('笔记本')">
            <div class="carousel-caption">

            </div>
        </div>
        <div class="item">
            <img src="img/iphone_square_large.jpg" alt="..." onclick="phone('手机')">
            <div class="carousel-caption">
            </div>
        </div>

        <div class="item">
            <img src="img/holiday_hero_subhead_2a_largetall.jpg" alt="..." onclick="phone('手机')">
            <div class="carousel-caption">
            </div>
        </div>

        <div class="item">
            <img src="img/tile_macos_large.jpg" alt="..." onclick="phone('手机')">
            <div class="carousel-caption">
            </div>
        </div>

    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<section class="sec1">
    <a><img src="img/8cbbaae5979d138dbc9e9616a06ba125.png" onclick="findProductById('26')"></a>
    <a><img src="img/387064f7e285263ac3ef81dd09baf5e4.png" onclick="findProductById('27')"></a>
    <a><img src="img/dd1c6b91990dee6177ad2ef4c1fb076e.png" onclick="findProductById('1')"></a>
    <a><img src="img/62f38e9081afaf20535678571aaf6b3b.jpg" onclick="findProductById('5')"></a>
</section>
<section class="sec2">
    <h3>手机</h3>
    <a href="javascript:void(0)" onclick="phone('手机')">手机</a>
    <div>
        <c:set var="s" value="100"></c:set>
        <c:forEach items="${pro1}" var="p" varStatus="vs" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='51' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<section class="sec2">
    <h3>平板</h3>
    <a href="javascript:void(0)" onclick="phone('平板')">平板</a>
    <div>
        <c:forEach items="${pro2}" var="p" varStatus="vs" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='52' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<section class="sec2">
    <h3>笔记本</h3>
    <a href="javascript:void(0)" onclick="phone('笔记本')">笔记本</a>
    <div>
        <c:forEach items="${pro3}" var="p" varStatus="vs" begin="0" end="4" step="1">
            <c:if test="${fn:substring(p.c3code,0,2)=='53' }">
                <div class="product">
                    <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                    <span class="brand">${p.name}</span>
                    <span class="title">${p.description}</span>
                    <span class="price">${p.price}</span>
                    <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>
<section class="sec3">
    <h3>配件</h3>
    <a href="javascript:void(0)" onclick="phone('配件')">配件</a>
    <div class="wrap">
        <div class="slide">
            <ul>
                <c:forEach items="${pro4}" var="p" varStatus="vs" begin="0" end="4" step="1">
                    <c:if test="${fn:substring(p.c3code,0,2)=='54' }">
                        <li>
                            <div class="product">
                                <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                                <span class="brand">${p.name}</span>
                                <span class="title">${p.description}</span>
                                <span class="price">${p.price}</span>
                                <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>

            </ul>
            <ul>
                <c:forEach items="${pro4}" var="p" varStatus="vs" begin="0" end="4" step="1">
                    <c:if test="${fn:substring(p.c3code,0,2)=='54' }">
                        <li>
                            <div class="product">
                                <img src="/upload/${p.imgurl}" onclick="findProductById('${p.id}')">
                                <span class="brand">${p.name}</span>
                                <span class="title">${p.description}</span>
                                <span class="price">${p.price}</span>
                                <a href="${pageContext.request.contextPath}/ProductFindByIdServlet?id=${p.id}"><em class="fast-buy"></em></a>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>

            </ul>

        </div>
        <span class="wrap-left"></span>
        <span class="wrap-right"></span>
    </div>
</section>
</body>
</html>