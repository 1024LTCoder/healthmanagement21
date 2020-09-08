<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/31
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
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

    <script type="text/javascript">
        $(document).ready(function(e) {

            $(".select3").uedSelect({
                width : 152
            });
        });
    </script>
</head>

<body class="sarchbody">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">系统设置</a></li>
    </ul>
</div>

<div class="formbody">


    <div id="usual1" class="usual">
        <form action="charge/searchById" method="post">
            <li><label>请输入体检人卡片编号:</label><input name="cards.cardNo" type="text" class="scinput1" />
                <label>&nbsp;&nbsp;</label><input type="submit" class="scbtn" value="开单"/></li>
        </form>
        <br><br>
        <ul class="seachform1">
            <div style="width:1200px;background-color:#333;margin:0 auto;">
                <div style="width:40%;height:30px;background-color:#F00;float:left;">
                    <table class="tablelist">
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>套餐名称</th>
                            <th>价格</th>
                        </tr>
                        </thead>

                        <tbody>
                        <f:forEach var="p" items="${itemList}">
                            <tr>
                                <td><input name="select" type="checkbox"></td>
                                <td>${p.association.assoName}</td>
                                <td>${p.association.assoPrice}</td>
                            </tr>
                        </f:forEach>
                        </tbody>
                    </table>
                </div>
                <div style="width:55%;height:30px;background-color:#F0F;float:right;">
                    <table class="tablelist">
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>项目名称</th>
                            <th>项目类别</th>
                            <th>所属科室</th>
                            <th>价格</th>
                        </tr>
                        </thead>

                        <tbody>
                        <f:forEach var="p" items="${itemList}">
                            <tr>
                                <td><input name="select" type="checkbox"></td>
                                <td><a>项目名称项目名称</a></td>
                                <td><a>项目类别项目类别</a></td>
                                <td><a>所属科室所属科室</a></td>
                                <td><a>价格价格价格</a></td>
                            </tr>
                        </f:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </ul>

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="formtitle"><span>卡片列表</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>序号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>血型</th>
                <th>出生年月</th>
                <th>电话</th>
                <th>住址</th>
            </tr>
            </thead>

            <tbody>
            <f:forEach var="p" items="${persons}">
                <tr>
                    <td>${p.perId}</td>
                    <td>${p.perName}</td>
                    <td>${p.perSex}</td>
                    <td>${p.perBlood}</td>
                    <td>${p.perBorn}</td>
                    <td>${p.perTele}</td>
                    <td>${p.perAddr}</td>
                        <%--<td><a href="charge/searchById?perId=${p.perId}" class="tablelink">查看</a>&nbsp;&nbsp;
                            <a href="javascript:void(0)" class="tablelink" onclick="confimDel(${p.perId})">删除</a>
                        </td>--%>
                </tr>
            </f:forEach>
            </tbody>
        </table>

    </div>

</div>
</body>

</html>