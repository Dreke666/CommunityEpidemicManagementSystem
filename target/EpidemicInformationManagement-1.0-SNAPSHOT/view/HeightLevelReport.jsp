
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
    <h3 align="center" style="font-weight: bold">外来人员报备</h3>
    <form action="/toHeightLevelReportPage" method="post">
        <input type="hidden" name="username" id="username" value="${username}">
        <div class="form-group">
            <label for="comefromidlevel">外返地风险等级:</label>
            <input type="text" list="list1"  required="required" class="form-control" name="comefromidlevel" id="comefromidlevel" placeholder="请选择外返地风险等级">
            <datalist id="list1">
                <option>低风险地区</option>
                <option>中风险地区</option>
                <option>高风险地区</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="traffic">交通方式:</label>
            <input type="text" list="list2"  required="required" class="form-control" name="traffic" id="traffic" placeholder="请选择交通方式">
            <datalist id="list2">
                <option>公共交通</option>
                <option>自驾</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="temperature">体温:</label>
            <input type="text" list="list3"  required="required" class="form-control" name="temperature" id="temperature" placeholder="请选择体温情况">
            <datalist id="list3">
                <option>正常</option>
                <option>异常</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="acidresults">核酸结果:</label>
            <input type="text" list="list4"  required="required" class="form-control" name="acidresults" id="acidresults" placeholder="请选择核酸结果">
            <datalist id="list4">
                <option>阳性</option>
                <option>阴性</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="quarantinelocation">隔离地点:</label>
            <input type="text" list="list5"  required="required" class="form-control" name="quarantinelocation" id="quarantinelocation" placeholder="请选择隔离地点">
            <datalist id="list5">
                <option>省内</option>
                <option>省外</option>
                <option>国外</option>
                <option>市内</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="quarantinedays">隔离天数:</label>
            <input type="text" list="list6"  required="required" class="form-control" name="quarantinedays" id="quarantinedays" placeholder="请选择隔离天数">
            <datalist id="list6">
                <option>3天</option>
                <option>7天</option>
                <option>14天</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group">
            <label for="finalacidresults">最后核酸结果:</label>
            <input type="text" list="list7"  required="required" class="form-control" name="finalacidresults" id="finalacidresults" placeholder="请选择最后核酸结果">
            <datalist id="list7">
                <option>正常</option>
                <option>异常</option>
                <option>良好</option>
                <option>其他</option>
            </datalist>
        </div>
        <div class="form-group" align="center" style="padding-left: 55px">
            <input type="submit" class="btn btn-success" value="提交" style="width: 100px">
            <input type="reset" class="btn btn-danger" value="重置" style="width: 100px">
        </div>
    </form>
    <a href="/toReportPage">从中低风险地区回来？点我报备！</a>
</div>

</body>
</html>
