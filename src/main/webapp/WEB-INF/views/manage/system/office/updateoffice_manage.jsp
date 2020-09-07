<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/5
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<%
    String path = request.getContextPath();
    /*相当于locahost：//项目名称:端口号/*/
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <%--使用base标签将所有的项目路径基准拉到了webapp，所以link可以正确使用。--%>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>无标题文档</title>
    <base href="/ssm_work/">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统设置</a></li>
        <li><a href="/manage/toOfficeManage">科室设置</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>充值</span></div>
    <form action="manage/updateOfficeById" method="post">
        <ul class="forminfo">
            <li><label>序号</label><input name="offId" type="text" class="scinput1" value="${office.offId}" readonly="readonly"/></li>
            <li><label>科室名称</label><input name="offName" type="text" class="scinput1" value="${office.offName}"/></li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value="修改"/></li>
        </ul>
    </form>

</div>

</body>

</html>
