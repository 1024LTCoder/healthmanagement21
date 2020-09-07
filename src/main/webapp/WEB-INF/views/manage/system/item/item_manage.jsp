<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/5
  Time: 21:52
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

        /*修改Item*/
        function updateItem(_id) {
            location.href="manage/toUpdateItem?subId="+_id;
        }

        /*删除Item操作*/
        function delItemById(_id,_name) {
            var flag = confirm("是否删除项目："+_name+"?");
            if(flag){
                location.href="manage/delItemById?subId="+_id;
            }
        }

        /*添加项目操作*/
        function  addItem() {
            location.href="manage/toAddItem";
        }

        /*查看项目详细信息*/
        function itemDetail(_id) {
            location.href="manage/toItemDetail?itemId="+_id;
        }

        $(function(){
            $("#vv").click(function(){
                $(".scinput1").val('');
            });
        });
    </script>
</head>

<body class="sarchbody">

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>系统管理</a></li>
        <li><a href="#">项目管理</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <ul class="seachform1">
            <form action="manage/findItem" method="post">
                <li><label>项目序号</label><input name="itemId" type="text" class="scinput1" value="${item.itemId}"/></li>
                <li><label>所属科室</label><input name="offName" type="text" class="scinput1" value="${item.office.offName}"/></li>
                <li><label>项目名称</label><input name="itemName" type="text" class="scinput1" value="${item.itemName}"/></li>
                <li><label>项目编号</label><input name="itemCode" type="text" class="scinput1" value="${item.itemCode}"/></li>
                <li><label>项目类别</label><input name="typeName" type="text" class="scinput1" value="${item.itemType.typeName}"/></li>
                <li><label>&nbsp;&nbsp;</label></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input type="submit" class="scbtn" value="查询"/>
                    <label>&nbsp;</label><input type="button" class="scbtn1" id="vv" value="复位"/>
                    <label>&nbsp;</label><input type="button" class="scbtn1" onclick="addItem()" value="添加项目"/>
                </li>

            </form>
        </ul>

        <br><br><br><br>
        <div class="formtitle"><span>项目信息▽▽▽▽</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>项目序号</th>
                <th>项目名称</th>
                <th>项目编号</th>
                <th>所属科室</th>
                <th>价格（元）</th>
                <th>项目类别</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="i" items="${items}">
                <tr>
                    <td>${i.itemId}</td>
                    <td>${i.itemName}</td>
                    <td>${i.itemCode}</td>
                    <td>${i.office.offName}</td>
                    <td>${i.itemPrice}</td>
                    <td>${i.itemType.typeName}</td>
                    <td>
                        <a href="javascript:void(0)" onclick="itemDetail(${i.itemId})" class="tablelink">详情</a>&emsp;
                        <a href="javascript:void(0)" onclick="updateItem(${i.itemId})" class="tablelink">修改</a>&emsp;
                        <a href="javascript:void(0)" onclick="delItemById(${i.itemId},'${i.itemName}')" class="tablelink"> 删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
