<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/5
  Time: 18:57
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

        /*修改SubItem*/
        function updateSubItem(_id) {
            location.href="manage/toUpdateSubItem?subId="+_id;
        }

        /*删除SubItem操作*/
        function delSubItemById(_id,_name) {
            var flag = confirm("是否删除细项："+_name+"?");
            if(flag){
                location.href="manage/delSubItemById?subId="+_id;
            }
        }

        /*跳转添加SubItem页面*/
        function toAddSubItem() {
            location.href="manage/toAddSubItem";
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
        <li><a href="manage/toSubItemManage">细项管理</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <ul class="seachform1">
            <form action="manage/querySubItem" method="post">
                <li><label>子项目名称</label><input name="subName" type="text" class="scinput1" value="${subItem.subName}"/></li>
                <li><label>子项目编号</label><input name="subCode" type="text" class="scinput1" value="${subItem.subCode}"/></li>
                <li><label>单位</label><input name="subUnit" type="text" class="scinput1" value="${subItem.subUnit}"/></li>
                <li><label>参考值</label><input name="subRefer" type="text" class="scinput1" value="${subItem.subRefer}"/></li>
                <li><label>&nbsp;&nbsp;</label></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input type="submit" class="scbtn" value="查询"/>
                    <label>&nbsp;</label><input type="button" class="scbtn" onclick="toAddSubItem()" value="新增"/>
                    <label>&nbsp;</label><input type="button" class="scbtn1" id="vv" value="复位"/>
                </li>

            </form>
        </ul>

        <br><br><br><br><br><br><br>
        <div class="formtitle"><span>细项信息▽▽▽▽</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>序号</th>
                <th>子项目名称</th>
                <th>子项目编号</th>
                <th>价格</th>
                <th>单位</th>
                <th>参考值</th>
                <th>健康上限值</th>
                <th>健康下限值</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="s" items="${subItems}">
                <tr>
                    <td>${s.subId}</td>
                    <td>${s.subName}</td>
                    <td>${s.subCode}</td>
                    <td>${s.subPrice}</td>
                    <td>${s.subUnit}</td>
                    <td>${s.subRefer}</td>
                    <td>${s.subUpper}</td>
                    <td>${s.subLower}</td>
                    <td>
                        <a href="javascript:void(0)" onclick="updateSubItem(${s.subId})" class="tablelink">修改</a>&emsp;
                        <a href="javascript:void(0)" onclick="delSubItemById(${s.subId},'${s.subName}')" class="tablelink"> 删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>
