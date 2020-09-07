<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/7
  Time: 19:04
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
        KE.show({
            id : 'content7',
            cssPath : './index.css'
        });
    </script>


</head>

<body class="sarchbody">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统管理</a></li>
        <li><a href="manage/toItemManage">项目管理</a></li>
        <li><a href="manage/toItemDetail">项目详情</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>项目基本信息▽▽▽▽</span></div>
    <table class="tablelist">
        <thead>
        <tr>
            <th>项目编号</th>
            <th>项目名称</th>
            <th>所属科室</th>
            <th>项目类别</th>
            <th>价格</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <c:forEach var="i" items="${items}" begin="0" end="0">
                <td>${i.itemCode}</td>
                <td>${i.itemName}</td>
                <td>${i.office.offName}</td>
                <td>${i.itemType.typeName}</td>
                <td>${i.itemPrice}</td>
            </c:forEach>

        </tr>
        </tbody>
    </table>

    <div class="formtitle"><span>项目包含的细项信息▽▽▽▽</span></div>
    <table class="tablelist">
        <thead>
            <tr>
                <th>子项目编号</th>
                <th>子项目名称</th>
                <th>单位</th>
                <th>参考值</th>
                <th>健康上限值</th>
                <th>健康下限值</th>
                <th>价格</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="i" items="${items}">
                <c:forEach var="s" items="${i.subItems}">
                    <tr>
                        <td>${s.subCode}</td>
                        <td>${s.subName}</td>
                        <td>${s.subUnit}</td>
                        <td>${s.subRefer}</td>
                        <td>${s.subUpper}</td>
                        <td>${s.subLower}</td>
                        <td>${s.subPrice}</td>
                    </tr>
                </c:forEach>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
