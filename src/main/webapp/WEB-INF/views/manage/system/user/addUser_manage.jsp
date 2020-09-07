<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/7
  Time: 13:06
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
    <link href="css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="js/select-ui.min.js"></script>
    <script type="text/javascript" src="editor/kindeditor.js"></script>

    <script type="text/javascript">
        $(document).ready(function(e) {

            $(".select1").uedSelect({
                width : 152
            });
        });
    </script>
</head>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统设置</a></li>
        <li><a href="manage/toUsersManage">人员设置</a></li>
        <li><a href="manage/addUser">添加人员</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>

    <ul class="forminfo">
        <form action="manage/addUser" method="post">
        <li><label>姓名</label><input name="userName" type="text" class="dfinput" /></li>
        <li><label>密码</label><input name="userPwd" type="text" class="dfinput" /></li>
        <li><label>所属科室</label>
            <div class="vocation">
                <select class="select1" name="offId">
                    <c:forEach var="o" items="${offices}">
                        <option value="${o.offId}">${o.offName}</option>
                    </c:forEach>
                </select>
            </div>
        </li>
        <li><label>权限</label>
            <div class="vocation">
                <select class="select1" name="userPrioId">
                    <c:forEach var="p" items="${priorities}">
                        <option value="${p.prioId}">${p.prioName}</option>
                    </c:forEach>
                </select>
            </div>
        </li>
        <li><label>&nbsp;</label><input type="submit" class="btn" value="添加"/></li>
        </form>
    </ul>


</div>


</body>

</html>
