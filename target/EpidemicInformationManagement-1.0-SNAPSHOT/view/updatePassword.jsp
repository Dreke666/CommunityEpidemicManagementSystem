<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改用户信息页面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />
    <!-- 顺序：先css后jquery最好bootstrap.js -->

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
    <h3 align="center">修改管理员</h3>
    <form action="/updateAdmin" method="post">
        <input type="hidden" id="uid" name="uid" value="${admin.aid}">

        <div class="form-group">
            <label for="psw" class="control-label">密码</label>
            <input type="password"  value="${admin.password}" class="form-control" required="required" placeholder="请输入密码" id="psw" name="password" >
        </div>

        <br>
        <div class="form-group" align="center" style="padding-left: 55px">
            <input type="submit" class="btn btn-success" value="修改" style="width: 100px">
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>
</div>

</body>
</html>
