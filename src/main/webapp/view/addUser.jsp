<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加用户信息页面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />
    <!-- 顺序：先css后jquery最好bootstrap.js -->
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <link href="/bootstrap/font-awesome.min.css" rel="stylesheet">
    <script src="/bootstrap/jquery-3.1.1.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>

    <style type="text/css">
        body{
            background: rgba(176,196,222, 0.2);
        }
        .core{
            margin-left:475px;
        }
    </style>
</head>
<body>
<div class="col-md-3 core">
    <h3 align="center">添加用户信息</h3>
    <form action="/doAddUser" method="post">
        <div class="form-group">
            <label for="username" class="control-label">用户名</label>
            <input type="text" class="form-control" required="required" placeholder="请输入用户名" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="psw" class="control-label">密码</label>
            <input type="password" class="form-control" required="required" placeholder="请输入密码" id="psw" name="password" >
        </div>
        <div class="form-group">
            <label for="sex">性别:</label>
            <input type="text" list="list1"  required="required" class="form-control" name="sex" id="sex" placeholder="请选择性别">
            <datalist id="list1">
                <option>男</option>
                <option>女</option>
            </datalist>
        </div>


        <div class="form-group">
            <label for="username" class="control-label">年龄</label>
            <input type="text" class="form-control" required="required" placeholder="请输入年龄" id="age" name="age">
        </div>
        <div class="form-group">
            <label for="roomid" class="control-label">门牌号</label>
            <input type="text" class="form-control" required="required" placeholder="请输入门牌号" id="roomid" name="roomid">
        </div>
        <div class="form-group">
            <label for="identity" class="control-label">身份证</label>
            <input type="text" class="form-control" required="required" placeholder="请输入身份证" id="identity" name="identity">
        </div>
        <div class="form-group">
            <label for="phone" class="control-label">联系方式</label>
            <input type="text" class="form-control" required="required" placeholder="请输入联系方式" id="phone" name="phone">
        </div>
        <br>
        <div class="form-group" align="center" style="padding-left: 55px">
            <input type="submit" class="btn btn-success" value="添加" style="width: 100px">
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>
</div>

</body>
</html>
