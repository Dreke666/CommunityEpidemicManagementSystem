
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
            height: 800px;
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


<div class="col-md-4 core">
    <h3 align="center" style="font-weight: bold">用户注册</h3>
    <form action="/doRegister" method="post">
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
            <input type="submit" class="btn btn-success" value="注册" style="width: 100px">
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>
    <a href="toUserLogin">有账号？点我登录！</a>
</div>

</body>
</html>
