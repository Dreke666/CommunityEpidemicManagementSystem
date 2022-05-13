<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改疫情信息信息页面</title>
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
    <h3 align="center">修改疫情信息</h3>
    <form action="/updateOutbreak" method="post">
        <input type="hidden" id="outbreakid" name="outbreakid" value="${outbreak.outbreakid}">
        <div class="form-group">
            <label for="content" class="control-label">疫情内容</label>
            <input type="text" value="${outbreak.content}" class="form-control" required="required" placeholder="疫情内容" id="content" name="content">
        </div>
        <div class="form-group">
            <label for="risklevel" class="control-label">风险等级</label>
            <input type="text" value="${outbreak.risklevel}" class="form-control" required="required" placeholder="请输入等级" id="risklevel" name="risklevel">
        </div>
        <div class="form-group">
            <label for="localtion" class="control-label">地区</label>
            <input type="text"  value="${outbreak.localtion}" class="form-control" required="required" placeholder="地区" id="localtion" name="localtion">
        </div>
        <br>
        <div class="form-group" align="center" style="padding-left: 55px">
            <input type="submit" class="btn btn-success" value="修改" style="width: 100px">
            <br>
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>
</div>

</body>
</html>
