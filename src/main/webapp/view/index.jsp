
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 23325
  Date: 2022/5/7
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title> 小区疫情防控管理系统</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />

    <!-- 顺序：先css后jquery最好bootstrap.js -->
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <link href="/bootstrap/font-awesome.min.css" rel="stylesheet">
    <script src="/bootstrap/jquery-3.1.1.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () { $('.tooltip-show').tooltip();});

    </script>
</head>
<style type="text/css">
    body{
        /*background: #10aeb5;*/
        background: #88cbf8;
    }
    .p1{
        position: absolute;
        top: 0px;
        height: 400px;
        width: 300px;
        /*background: #FCFCFC;*/
        /*border-radius: 9px;*/
        left: 0;
        /*padding:;*/
    }

    .p2{
        position: absolute;
        top: 0;
        height: 400px;
        width: 300px;
        padding-left: 290px;
    }
    .p21{
        position: relative;
        top: 15px;
        height: 300px;
        width: 450px;
        /*background: #f1f1f1;*/
        border-radius: 9px;
        padding-left: 10px;
        padding-bottom: 20px;
    }
    .p22{
        position: absolute;
        top: 350px;
        height: 95px;
        width: 450px;
        /*background: #f1f1f1;*/
        border-radius: 9px;
        margin-top: 10px;
        margin-left: 13px;
        font-size: 52px;
        color: white;
        font-weight: bold;
    }
    .tb1>tbody>tr>td{
        border: 0px solid #f1f1f1;
    }
    .tb2>tbody>tr>td{
        height: 60px;
        vertical-align: middle;
    }
    .piechart{
        position: absolute;
        top: 823px;
        height: 534px;
        width: 730px;
        margin-left: 15px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
    }
    .barchart{
        position: absolute;
        top: 1419px;
        height: 534px;
        width: 730px;
        margin-left: 15px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
    }
    .p3{
        position: absolute;
        top: 570px;
        height: 60px;
        width: 550px;
        margin-left: -30px;
    }
    .p4{
        position: absolute;
        top: 640px;
        height: 550px;
        width: 550px;
        background: #FCFCFC;
        border: 2px solid #d0d0d0 ;
        margin-left: -30px;
    }
    .p5{
        position: absolute;
        top: 570px;
        height: 60px;
        width: 550px;
        margin-left: 600px;
    }
    .p6{
        position: absolute;
        top: 640px;
        height: 550px;
        width: 550px;
        background: #FCFCFC;
        border: 2px solid #d0d0d0 ;
        margin-left: 600px;
    }
    .newsall{
        position:absolute;
        top:2px;
        height: 400px;
        width: 400px;
        right: 0;
        top:0;
    }
    .newstitle{
        position: relative;
        top: 10px;
        height: 50px;
        width: 130px;
        font-size: 20px;
        padding-left: 6px;
    }
    .news{
        position: relative;
        top: 2px;
        height: 400px;
        width: 410px;
        margin-left: 15px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
    }
    .login1{
        position: absolute;
        top: 3px;
        height: 50px;
        width: 2px;
        /*background: #f1f1f1;*/
        border-radius: 9px;
        left: 10px;
    }
    .morenews{
        position: absolute;
        bottom: 0px;
        right: 0px;
        height: 50px;
        width: 150px;
    }
    .newsall1{
        position:absolute;
        top:200px;
        height: 400px;
        width:2px;
        right: 100px;
        top:0;
    }
    .newstitle1{
        position: relative;
        top: 470px;
        height: 500px;
        width: 300px;
        font-size: 20px;
        padding-right: 6px;
    }
    .news1{
        position: relative;
        top: 2px;
        height: 400px;
        width: 410px;
        margin-right: 10px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
    }
    .p7{
        position: absolute;
        top: 1260px;
        height: 50px;
        width: 730px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
        margin-left: 170px;
    }
    .p8{
        position: absolute;
        top: 1340px;
        height: 170px;
        width: 300px;
        /*background: #FCFCFC;*/
        border-radius: 9px;
        margin-left: 400px;
    }
    .footer2{
        width: 100%;
        height: 40px;
        /*background: rgba(252,252,252,0.5);*/
        background: #F0F0F0;
    }
    .newsall2{
        position:absolute;
        top:-52px;
        height: 600px;
        width: 800px;
        right: 0;
        top:0;
    }

    .news2{
        position: relative;
        top: 10px;
        height: 400px;
        width: 410px;
        margin-left: 1000px;
        margin-top: -450px;
        /*background: #FCFCFC;*/
        background: rgba(252,252,252, 0.8);
        border-radius: 9px;
    }
    table {
        width: 300px;
        left: 10px;
        top: 200px;
        bottom: 0px;
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
<script type="text/javascript">
    //判断当前年份是否是闰年(闰年2月份有29天，平年2月份只有28天)
    function isLeap(year) {
        return year % 4 == 0 ? (year % 100 != 0 ? 1 : (year % 400 == 0 ? 1 : 0)) : 0;
    }
    var i, k,
        //获取今日日期
        today = new Date(),
        //获取年份
        y = today.getFullYear(),
        //获取月份(注意：月份从0开始计算，获取的值比正常月份少1)
        m = today.getMonth(),
        //获取日期中的日(方便在建立日期表格时高亮显示当天)
        d = today.getDate(),
        //获取当月的第一天
        firstday = new Date(y, m, 1),
        //判断第一天是星期几(返回[0-6]中的一个，0代表星期天，1代表星期一，以此类推)
        dayOfWeek = firstday.getDay(),
        //创建月份数组
        days_per_month = new Array(31, 28 + isLeap(y), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31),
        //确定日期表格所需的行数
        str_nums = Math.ceil((dayOfWeek + days_per_month[m]) / 7);
    document.write("<table cellspacing='0'><tr><td colspan ='7'>" + y + "年" + (m + 1) + "月" + "</td></tr>");
    //打印表格第一行(显示星期)
    document.write("<tr><th>日</th><th>一</th><th>二</th><th>三</th><th>四</th><th>五</th><th>六</th></tr>");
    //二维数组创建日期表格
    for(i = 0; i < str_nums; i += 1) {
        document.write('<tr>');
        for(k = 0; k < 7; k++) {
            //为每个表格创建索引,从0开始
            var idx = 7 * i + k;
            //将当月的1号与星期进行匹配
            var date = idx - dayOfWeek + 1;
            //索引小于等于0或者大于月份最大值就用空表格代替
            (date <= 0 || date > days_per_month[m]) ? date = ' ': date = idx - dayOfWeek + 1;
            //高亮显示当天
            date == d ? document.write('<td class="today">' + date + '</td>') : document.write('<td>' + date + '</td>');
        }
        document.write('</tr>');
    }
    document.write('</table>');
</script>
<body>




<div class="container">
    <div class="p2">

        <div>
            <img src="https://img95.699pic.com/photo/50162/3112.jpg_wh860.jpg" class="p21">
        </div>
        <div class="p22">
            <h1 style="font-size: 52px; color: white; font-weight: bold">科学防护 共渡难关</h1>
            <h2 style="color: white">小区疫情实时动态播报</h2>
        </div>
    </div>



    <div class="newstitle1">
        <p>疫情信息</p>
    </div>
    <div class="news1">
        <c:forEach items="${outbreakPageInfo.list}" var="outbreak" varStatus="s">
        <div style="padding-top: 20px; padding-left: 20px">
                <span>${outbreak.localtion}</span>
            <a style="font-size: 17px; float: left; color: black" href="#">
                <i class=" fa fa-hand-o-right" style="float: right"></i>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fa fa-angle-double-right"></i>
            </a>
            <p style="padding-top: 3px; color: #7B7B7B">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${outbreak.content}</span>
            </p>


        </div>
        </c:forEach>

    </div>

</div>

<div class="newsall">
    <div class="newstitle">
        <p>小区公告信息</p>
    </div>
    <div class="news">
        <c:forEach varStatus="s" var="notice" items="${noticePageInfo.list}">
        <div style="padding-top: 20px; padding-left: 20px">

            <a style="font-size: 17px; float: left; color: black">
                <i class=" fa fa-hand-o-right" style="float: left"></i>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <i class="fa fa-angle-double-right"></i>
            </a>
            <p style="padding-top: 3px; color: #7B7B7B">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${notice.content}</span>
            </p>


        </div>
        </c:forEach>

    </div>

</div>

<div class="newsal2">

    <div class="news2">
        <div style="padding-top: 20px; padding-left: 20px">

            <h2 align="center"> 防疫须知</h2>
            <div style="padding-top: 18px;padding-left: 1px;font-size: larger; color: #7B7B7B">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${guidelines.content}</span>
            </div>

            <br>
        </div>


    </div>
    <div class="login1">
        <div>
            <div class="btn-group btn-group-sm" >
                <a href="${pageContext.request.contextPath}/toReportPage?username=${username}" class="tooltip-show"
                   data-toggle="tooltip"  ><button class="btn btn-success" >外来人员报备</button></a>
            </div>
        </div>
    </div>
</div>


<div class="p7 text-center">
    <p style="font-size: 20px; padding-top: 11px"><strong>积极防护，保护自己，戴口罩，勤洗手</strong></p>
</div>

<div class="p8 text-center" style="color: #4F4F4F">
    <p>请各位业主自觉做好防疫工作</p>
    <p>疫情防护，人人有责</p>
</div>

</div>


</body>
</html>
