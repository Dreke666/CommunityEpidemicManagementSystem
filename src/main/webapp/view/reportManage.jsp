<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>报备信息</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width， initial-scale=1" />
    <%-- <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
     <script src="bootstrap/bootstrap.min.js"></script>
     <script src="bootstrap/jquery-3.2.1.min.js"></script>--%>

    <!-- 顺序：先css后jquery最好bootstrap.js -->
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
    <link href="/bootstrap/font-awesome.min.css" rel="stylesheet">
    <script src="/bootstrap/jquery-3.1.1.js"></script>
    <script src="/bootstrap/bootstrap.min.js"></script>

    <style type="text/css">
        td, th{
            text-align: center;
        }
    </style>

    <script type="text/javascript">
        function deleteReport(reportid) {
            //报备安全提示
            if (confirm("您确定要删除吗?")){
                location.href = "${pageContext.request.contextPath}/deleteReportById?reportid="+reportid;
            }
        }





    </script>
</head>
<body>
<br>
<div class="pull-left">
    <form class="form-inline" action="${pageContext.request.contextPath}/findAllReportByPage" method="post">

        <%-- <div class="form-group">
             <label for="inputName">姓名</label>
             <input type="text" name="sname" value="${user.username}" class="form-control" id="inputName" placeholder="输入姓名查找">
         </div>--%>
        <%-- <div class="form-group">
             <label for="inpusdept">学院</label>
             <input type="text" name="sdept" value="${user.sdept}" class="form-control" id="inpusdept" placeholder="输入学院查找">
         </div>--%>


    </form>
</div>
<div class="pull-right">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/toAddReportPage">添加报备信息</a>

</div>

<form id="form" action="${pageContext.request.contextPath}/findAllReportByPage" method="post">
    <%--条纹表格,通过添加 .table-striped class，您将在 <tbody> 内的行上看到条纹--%>
    <table class="table table-striped table-hover">
        <caption <%--style="background: #F5F5F5"--%>>
            报备信息
            <%--<div class="pull-right">
                <a class="btn btn-default" href="${pageContext.request.contextPath}/view/schoadmin/addstu.jsp">添加学生</a>
                <a class="btn btn-danger" href="javascript:void(0);" id="delSelected">删除选中</a>
            </div>--%>
        </caption>
        <thead style="background: #337ab7">
        <tr>
            <th>编号</th>
            <th>核酸结果</th>
            <th>往返地风险等级</th>
            <th>最后核酸结果</th>
            <th>隔离天数</th>
            <th>隔离地点</th>
            <th>体温</th>
            <th>交通方式</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="report" varStatus="s">
            <tr>

                <td>${s.count}</td>
                <td>${report.acidresults}</td>
                <td>${report.comefromidlevel}</td>
                <td>${report.finalacidresults}</td>
                <td>${report.quarantinedays}</td>
                <td>${report.quarantinelocation}</td>
                <td>${report.temperature}</td>
                <td>${report.traffic}</td>
                <td>
                    <a class="btn btn-default" href="${pageContext.request.contextPath}/toUpdateReportPage?reportid=${report.reportid}">修改</a>
                    <a class="btn btn-danger"  href="javascript:deleteReport('${report.reportid}');">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</form>

<div>
    <nav aria-label="Page navigation" class="pull-left">
        <ul class="pagination">
            <c:if test="${pageInfo.pageSize == 1}">
            <li class="disabled">
                </c:if>
                <c:if test="${pageInfo.pageSize != 1}">
            <li>
                </c:if>
                <a href="${pageContext.request.contextPath}/findAllReportByPage?pageNum=${pageInfo.pageNum-1}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <c:forEach begin="1" end="${pageInfo.pages}" var="i">
                <c:if test="${pageInfo.pageSize == i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/findAllReportByPage?pageNum=${i}">${i}</a></li>
                </c:if>
                <c:if test="${pageInfo.pageSize != i}">
                    <li><a href="${pageContext.request.contextPath}/findAllReportByPage?pageNum=${i}">${i}</a></li>
                </c:if>

            </c:forEach>

            <c:if test="${pageInfo.pageSize == pageInfo.pages}">
            <li class="disabled">
                </c:if>
                <c:if test="${pageInfo.pageSize != pageInfo.pages}">
            <li>
                </c:if>
                <a href="${pageContext.request.contextPath}/findAllReportByPage?pageNum=${pageInfo.pageNum + 1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>

            <span style="font-size: 23px; margin-left: 5px">共${pageInfo.total}条记录，共${pageInfo.pages}页</span>
        </ul>
    </nav>

    <br>
    <a href="${pageContext.request.contextPath}/view/welcome.jsp" class="pull-right">
        <input type="button" class="btn-primary btn" value="返回首页">
    </a>
</div>
</body>
</html>
