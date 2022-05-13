<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加公告信息页面</title>
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
    <h3 align="center">添加公告信息</h3>
    <form action="/addNotice" method="post">
        <div class="form-group">
            <label for="content" class="control-label">公告内容</label>
            <input type="text" class="form-control" required="required" placeholder="请输入公告内容" id="content" name="content">
        </div>
      <div>
          <label for="date"  class="control-label">发表日期</label>
          <input type="date" required="required" id="date" name="date">
      </div>
        <div class="form-group">
            <label for="publisher" class="control-label">发布者</label>
            <input type="text" class="form-control" required="required" placeholder="请输入发布者" id="publisher" name="publisher">
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
