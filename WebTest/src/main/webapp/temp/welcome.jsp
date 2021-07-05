<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<title>登录界面</title>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/font-awesome.css">

    <style>
        input::-webkit-input-placeholder {
            color:white;
        }
        input::-moz-placeholder {
            /* Mozilla Firefox 19+ */
            color: white;
        }
        input:-moz-placeholder {
            /* Mozilla Firefox 4 to 18 */
            color: white;
        }
        input:-ms-input-placeholder {
            /* Internet Explorer 10-11 */
            color: white;
        }
    </style>
</head>

<body>
    <form action="#" method="POST">
        <div id="login-box">
            <h1>用户登录入口</h1>
            <div class="form">
                <div class="item">
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <input type="text" placeholder="请输入用户名" name="username">
                </div>

                <div class="item">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input type="password" placeholder="请输入密码" name="password">
                </div>
            </div>
            <button type="submit">登录</button>
	<button type='reset'>重置</button>
	<button type='button' onclick="window.location='register.jsp'">注册</button>
        </div>
    </form>
</body>

</html>