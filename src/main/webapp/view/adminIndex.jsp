<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>管理员后台主界面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />
    <!-- 顺序：先css后jquery最好bootstrap.js -->
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <link href="/bootstrap/font-awesome.min.css" rel="stylesheet">
    <script src="/bootstrap/jquery-3.1.1.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
        }
        .pageContainer{
            bottom: 0;
            left:0;
            right: 0;
            top: 53px;
            overflow: auto;
            position: absolute;
            width: 100%;
        }
        .pageSidebar{
            width: 230px;
            height: 100%;
            overflow: auto;
            padding-bottom: 30px;
            background: #F5F5F5;
        }
        .footer{
            width: 100%;
            height: 30px;
            line-height: 30px;
            margin-top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            z-index: 10;
            background-color:#F0F0F0;
        }
        .pageContent{
            height: 605px;
            min-width: 768px;
            left: 242px;
            top: 0;
            right: 0;
            z-index: 3;
            margin-top: 55px;
            margin-right: 11px;
            padding-bottom: 30px;
            position: absolute;
            background: rgba(176,196,222, 0.2);
            border-radius: 6px;
        }
        .pageContentTitle{
            height: 20px;
            min-width: 768px;
            left: 242px;
            top: 10px;
            right: 10px;
            z-index: 3;
            position: absolute;
        }


        .mysearch{
            margin: 10px 0;
        }
        .btn1{
            height: 33px;
        }
        .navbar-collapse{
            padding-right: 5px;
            padding-left: 5px;
        }
        .nav>li>a{
            color: #444;
            margin: 0 5px;
        }
        .list-group-item{
            text-align: center;
        }
        .set1{
            text-align: center;
        }
        table {
            width: 300px;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            text-align: center;
            border: 2px solid pink;
            position: absolute;
        }
        th,
        td {
            border: 2px solid pink;
            padding:5px
        }
        .today {
            color: red;
        }
    </style>
</head>
<script type="text/javascript">

</script>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#" title="logoTitle">小区疫情管理系统后台</a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li role="presentation">
                    <a href="#">当前用户: <span class="badge">${belong}管理员</span></a>
                </li>
                <li role="presentation">
                    <a href="${pageContext.request.contextPath}/index"><span class="fa fa-power-off"></span> 退出登录</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 中间主体内容部分 -->
<div class="pageContainer">
    <!-- 左侧导航栏 -->
    <div class="pageSidebar">

        <div class="list-group">
            <a class="list-group-item active" href="#" style="font-size: 15px">
                <span class="fa fa-home fa-lg"></span>
                信息操作
            </a>

            <a class="list-group-item collapse" data-toggle="collapse" href="#sub1">
                <span class="fa fa-search fa-lg"></span>
                用户信息管理
                <span class="fa fa-caret-down fa-lg"></span>
            </a>
            <ul class="nav collapse" id="sub1">
                <li><a href="${pageContext.request.contextPath}/findAllUserByPage" class="set1" target="mainFrame">用户信息</a></li>
            </ul>
            <a class="list-group-item collapse" data-toggle="collapse" href="#sub2">
                <span class="fa fa-search fa-lg"></span>
                公告信息管理
                <span class="fa fa-caret-down fa-lg"></span>
            </a>
            <ul class="nav collapse" id="sub2">
                <li><a href="${pageContext.request.contextPath}/findAllNoticeByPage" class="set1" target="mainFrame">公告信息</a></li>
            </ul>
            <a class="list-group-item collapse" data-toggle="collapse" href="#sub3">
            <span class="fa fa-search fa-lg"></span>
            疫情信息管理
            <span class="fa fa-caret-down fa-lg"></span>
        </a>
            <ul class="nav collapse" id="sub3">
                <li><a href="${pageContext.request.contextPath}/findAllOutbreakByPage" class="set1" target="mainFrame">疫情信息</a></li>
            </ul>
            <a class="list-group-item collapse" data-toggle="collapse" href="#sub4">
            <span class="fa fa-search fa-lg"></span>
                报备信息管理
            <span class="fa fa-caret-down fa-lg"></span>
        </a>
            <ul class="nav collapse" id="sub4">
                <li><a href="${pageContext.request.contextPath}/findAllReportByPage" class="set1" target="mainFrame">报备信息</a></li>
            </ul>


        </div>
    </div>

    <!-- 左侧导航和正文内容的分隔线 -->
    <div class="splitter"></div>

    <!-- 正文导航部分 -->
    <div class="pageContentTitle">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/toUpdateGuidelinesPage">修改须知</a></li>
        </ol>
    </div>

    <!-- 正文内容部分 -->
    <div class="pageContent">
        <iframe src="${pageContext.request.contextPath}/view/welcome.jsp" id="mainFrame" name="mainFrame" frameborder="3" style="border-radius: 6px; border-color: #F5F5F5" width="100%" height="605" frameBorder="0">
        </iframe>
    </div>
</div>

</body>
</html>
