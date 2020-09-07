<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/7
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    /*相当于locahost：//项目名称:端口号/*/
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <%--使用base标签将所有的项目路径基准拉到了webapp，所以link可以正确使用。--%>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统设置</a></li>
        <li><a href="manage/toSubItemManage">细项设置</a></li>
        <li><a href="manage/addSubItem">添加细项</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>

    <ul class="forminfo">
        <form action="manage/addSubItem" method="post">
            <li><label>子项目名称</label><input name="subName" type="text" class="dfinput" /></li>
            <li><label>子项目编号</label><input name="subCode" type="text" class="dfinput" /></li>
            <li><label>价格</label><input name="subPrice" type="text" class="dfinput" /></li>
            <li><label>单位</label><input name="subUnit" type="text" class="dfinput" /></li>
            <li><label>参考值</label><input name="subRefer" type="text" class="dfinput" /></li>
            <li><label>健康上限值</label><input name="subUpper" type="text" class="dfinput" /></li>
            <li><label>健康下限值</label><input name="subLower" type="text" class="dfinput" /></li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value="添加"/></li>
        </form>
    </ul>


</div>


</body>

</html>

