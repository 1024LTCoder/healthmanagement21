<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/4
  Time: 13:32
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
        <li><a href="manage/toUsersManage">人员设置</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>充值</span></div>
    <form action="manage/updateUser" method="post">
        <ul class="forminfo">
            <li><label>序号</label><input name="userId" type="text" class="dfinput" value="${user.userId}" readonly="readonly"/></li>
            <li><label>姓名</label><input name="userName" type="text" class="dfinput" value="${user.userName}"/></li>
            <li><label>密码</label><input name="userPwd" type="text" class="dfinput" value="${user.userPwd}"/></li>
            <li><label>所属科室</label>
                <select class="select3" name="offId">
                    <option value="1" ${user.offId==1?"selected":""}>内科</option>
                    <option value="2" ${user.offId==2?"selected":""}>外科</option>
                </select>
                <%--<input name="productPrice" type="text" class="dfinput" value="${user.office.offName}"/>--%>
            </li>
            <li><label>权限</label>
                <select class="select3" name="userPrioId">
                    <option value="1" ${user.userPrioId==1?"selected":""}>医生类</option>
                    <option value="2" ${user.userPrioId==2?"selected":""}>系统管理员</option>
                </select>
                <%--<input name="productStock" type="text" class="dfinput" value="${user.priority.prioName}"/>--%>
            </li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value="修改"/></li>
        </ul>
    </form>

</div>

</body>

</html>
