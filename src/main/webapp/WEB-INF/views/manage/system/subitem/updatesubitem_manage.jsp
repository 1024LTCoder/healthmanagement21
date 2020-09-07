<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/5
  Time: 18:58
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
        <li><a href="/manage/toSubItemManage">细项设置</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>充值</span></div>
    <form action="manage/updateSubItemById" method="post">
        <ul class="forminfo">
            <li><label>序号</label><input name="subId" type="text" class="dfinput" value="${subItem.subId}" readonly="readonly" style="width:200px;"/></li>
            <li><label>子项目名称</label><input name="subName" type="text" class="dfinput" value="${subItem.subName}"  style="width:200px;"/></li>
            <li><label>子项目编号</label><input name="subCode" type="text" class="dfinput" value="${subItem.subCode}"  style="width:200px;"/></li>
            <li><label>价格</label><input name="subPrice" type="text" class="dfinput" value="${subItem.subPrice}"  style="width:200px;"/></li>
            <li><label>单位</label><input name="subUnit" type="text" class="dfinput" value="${subItem.subUnit}"  style="width:200px;"/></li>
            <li><label>参考值</label><input name="subRefer" type="text" class="dfinput" value="${subItem.subRefer}"  style="width:200px;"/></li>
            <li><label>健康上限值</label><input name="subUpper" type="text" class="dfinput" value="${subItem.subUpper}"  style="width:200px;"/></li>
            <li><label>健康下限值</label><input name="subLower" type="text" class="dfinput" value="${subItem.subLower}"  style="width:200px;"/></li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value="修改"/></li>
        </ul>
    </form>

</div>

</body>

</html>
