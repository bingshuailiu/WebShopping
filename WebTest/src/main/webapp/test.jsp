<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Personal Center</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
</head>

<body>
<div class="wrapper wrapper-content">

    <form class="form-horizontal" action ="" method="post">
        <input type="hidden" name="userid" value="${userNow.userId}" />

        <div class="form-group">
            <label for="" class="col-sm-2 control-label">账号:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="" placeholder="" readonly="readonly" value="${userNow.suAccount}" name = "suAccount">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">密码:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="" placeholder="" name = "suPassword" maxlength="5"  readonly="readonly" value="${userNow.suPassword}">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">姓名:</label>
            <div class="col-sm-10">
                <input type="text" name="suName" class="form-control"  readonly="readonly" value="${userNow.suName}">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">性别:</label>
            <div class="col-sm-10">
                <input type="text" name="userSex" class="form-control"  readonly="readonly" value="${userNow.suSex}">
            </div>
        </div>

        <div class="form-group">
            <label for="" class="col-sm-2 control-label">手机号:</label>
            <div class="col-sm-10">
                <input type="text" value="${userNow.suPhone}" readonly="readonly" class="form-control" name= "suPhone">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">身份证号码:</label>
            <div class="col-sm-10">
                <input type="text" value="${userNow.suIdentityCard}" readonly="readonly" class="form-control" name="suIdentityCard">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">卡号:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" readonly="readonly" value="${userNow.suCardNumber}" name="suCardNumber">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">所属部门:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" readonly="readonly" value="${userNow.department.deName}">
            </div>
        </div>
        <div class="form-group">
            <label for="" class="col-sm-2 control-label">所属角色:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" readonly="readonly" value="${userNow.systemRole.srName}">
            </div>
        </div>
        <button type="submit" class="form-control" class="btn btn-primary">修改个人信息</button>

    </form>
</div>
</body>
</html>