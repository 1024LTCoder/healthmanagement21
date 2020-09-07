<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/5
  Time: 16:44
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

        /*修改office*/
        function updateOffice(_id) {
            location.href="manage/toUpdateOffice?offId="+_id;
        }

        /*删除office操作*/
        function delOffice(_id,_name) {
            var flag = confirm("是否删除科室："+_name+"?");
            if(flag){
                location.href="manage/delOfficeById?offId="+_id;
            }
        }
    </script>
</head>

<body class="sarchbody">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统管理</a></li>
        <li><a href="#">科室管理</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <ul class="seachform1">
            <form action="manage/addOffice" method="post">
                <li><label>科室名称</label><input name="offName" type="text" class="scinput1" /></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input type="submit" class="scbtn" value="新增"/>
                    <label>&nbsp;</label><input type="reset" class="scbtn1" value="复位"/>
                </li>

            </form>
        </ul>

        <br><br><br>
        <div class="formtitle"><span>科室信息▽▽▽▽</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>序号</th>
                <th>科室名称</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="o" items="${offices}">
                <tr>
                    <td>${o.offId}</td>
                    <td>${o.offName}</td>
                    <td>
                        <a href="javascript:void(0)" onclick="updateOffice(${o.offId})" class="tablelink">修改</a>&emsp;
                        <a href="javascript:void(0)" onclick="delOffice(${o.offId},'${o.offName}')" class="tablelink"> 删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

