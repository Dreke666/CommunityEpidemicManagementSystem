<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录页面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />

    <!-- 顺序：先css后jquery最好bootstrap.js -->
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <link href="/bootstrap/font-awesome.min.css" rel="stylesheet">
    <script src="/bootstrap/jquery-3.1.1.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>

    <style type="text/css">
        body{
            /*background: #10aeb5;*/
            background: #88cbf8;
        }
        /*.core{
            !*margin-left:475px;*!
            background: #FCFCFC;
            border-radius: 9px;
            margin-top: 65px;
            height: 295px;
        }*/
        .core{
            position: absolute;
            top: 275px;
            left: 512px;
            /*margin-left:475px;*/
            background: #FCFCFC;
            border-radius: 9px;
            height: 295px;
        }
        /*.head{
            width: 800px;
            height: 70px;
            margin-top: 140px;
            margin-left: 467px;
        }*/
        .head{
            position: absolute;
            top: 140px;
            left: 467px;
            width: 800px;
            height: 70px;
            padding-left: 200px;
        }
        .head>p{
            text-shadow: 4px 4px 4px #7B7B7B;
            color: #5B5B5B;
        }
        .but{
            position: absolute;
            right: 2px;
            top: 2px;
        }
    </style>
</head>
<body>
<div class="header-panel head">
    <p style="font-size: 50px;align-content: center"><strong>小区疫情防控管理系统</strong></p>
</div>

<div class="col-md-4 core">
    <h3 align="center" style="font-weight: bold">管理员登录</h3>
    <form action="/doAdminLogin" method="post">
        <div class="form-group">
            <label for="username" class="control-label">管理员名称</label>
            <input type="text" class="form-control" required="required" placeholder="请输入用户名" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="psw" class="control-label">密码</label>
            <input type="password" class="form-control" required="required" placeholder="请输入密码" id="psw" name="password" >
        </div>

        <br>
        <div class="form-group" align="center" style="padding-left: 55px">
            <input type="submit" class="btn btn-success" value="登录" style="width: 100px">
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>

</div>


</body>
</html>
