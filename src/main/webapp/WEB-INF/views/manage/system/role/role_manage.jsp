<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/4
  Time: 18:09
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

    <script type="text/javascript">
        $(document).ready(function(e) {

            $(".select3").uedSelect({
                width : 152
            });
        });

        /*修改priority*/
        function updatePriority(_id) {
            location.href="manage/toUpdatePriority?prioId="+_id;
        }

        /*删除priority操作*/
        function delPriority(_id,_name) {
            var flag = confirm("是否删除角色："+_name+"?");
            if(flag){
                location.href="manage/delPriority?prioId="+_id;
            }
        }
    </script>
</head>

<body class="sarchbody">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统管理</a></li>
        <li><a href="#">角色管理</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <ul class="seachform1">
            <form action="manage/addPriority" method="post">
                <li><label>角色名称</label><input name="prioName" type="text" class="scinput1" /></li>
                <li><label>文章内容</label><textarea name="prioDesc" cols="" rows="" class="textinput"></textarea></li>
                <li><label>&nbsp;&nbsp;</label></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input type="submit" class="scbtn" value="新增"/>
                    <label>&nbsp;</label><input type="reset" class="scbtn1" value="复位"/>
                </li>

            </form>
        </ul>

        <br><br><br><br><br><br><br><br><br><br>
        <div class="formtitle"><span>角色信息▽▽▽▽</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>序号</th>
                <th>角色名称</th>
                <th>角色描述</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="p" items="${priorities}">
                <tr>
                    <td>${p.prioId}</td>
                    <td>${p.prioName}</td>
                    <td>${p.prioDesc}</td>
                    <td>
                        <a href="javascript:void(0)" onclick="updatePriority(${p.prioId})" class="tablelink">修改</a>&emsp;
                        <a href="javascript:void(0)" onclick="delPriority(${p.prioId},'${p.prioName}')" class="tablelink"> 删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>
