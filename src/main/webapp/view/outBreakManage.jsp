<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>疫情信息</title>
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
        function deleteOutbreak(outbreakid) {
            //疫情安全提示
            if (confirm("您确定要删除吗?")){
                location.href = "${pageContext.request.contextPath}/deleteOutbreakById?outbreakid="+outbreakid;
            }
        }





    </script>
</head>
<body>
<br>
<div class="pull-left">
    <form class="form-inline" action="${pageContext.request.contextPath}/findAllOutbreakByPage" method="post">

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
    <a class="btn btn-default" href="${pageContext.request.contextPath}/toAddOutbreakPage">添加疫情信息</a>

</div>

<form id="form" action="${pageContext.request.contextPath}/findAllOutbreakByPage" method="post">
    <%--条纹表格,通过添加 .table-striped class，您将在 <tbody> 内的行上看到条纹--%>
    <table class="table table-striped table-hover">
        <caption <%--style="background: #F5F5F5"--%>>
            疫情信息
            <%--<div class="pull-right">
                <a class="btn btn-default" href="${pageContext.request.contextPath}/view/schoadmin/addstu.jsp">添加学生</a>
                <a class="btn btn-danger" href="javascript:void(0);" id="delSelected">删除选中</a>
            </div>--%>
        </caption>
        <thead style="background: #337ab7">
        <tr>
            <th>编号</th>
            <th>Id</th>
            <th>风险等级</th>
            <th>地区</th>
            <th>须知</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="outbreak" varStatus="s">
            <tr>

                <td>${s.count}</td>
                <td>${outbreak.outbreakid}</td>
                <td>${outbreak.risklevel}</td>
                <td>${outbreak.localtion}</td>
                <td>${outbreak.content}</td>
                <td>
                    <a class="btn btn-default" href="${pageContext.request.contextPath}/toUpdateOutbreakPage?outbreakid=${outbreak.outbreakid}">修改</a>
                    <a class="btn btn-danger"  href="javascript:deleteOutbreak('${outbreak.outbreakid}');">删除</a>
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
                <a href="${pageContext.request.contextPath}/findAllOutbreakByPage?pageNum=${pageInfo.pageNum-1}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <c:forEach begin="1" end="${pageInfo.pages}" var="i">
                <c:if test="${pageInfo.pageSize == i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/findAllOutbreakByPage?pageNum=${i}">${i}</a></li>
                </c:if>
                <c:if test="${pageInfo.pageSize != i}">
                    <li><a href="${pageContext.request.contextPath}/findAllOutbreakByPage?pageNum=${i}">${i}</a></li>
                </c:if>

            </c:forEach>

            <c:if test="${pageInfo.pageSize == pageInfo.pages}">
            <li class="disabled">
                </c:if>
                <c:if test="${pageInfo.pageSize != pageInfo.pages}">
            <li>
                </c:if>
                <a href="${pageContext.request.contextPath}/findAllOutbreakByPage?pageNum=${pageInfo.pageNum + 1}" aria-label="Next">
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
