<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/3
  Time: 17:01
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

        /*修改user*/
        function updateUser(_id) {
            location.href="manage/toUpdateUser?userId="+_id;
        }

        /*删除用户操作*/
        function delUser(_id,_name) {
            var flag = confirm("是否删除用户："+_name+"?");
            if(flag){
                location.href="manage/delUser?userId="+_id;
            }
        }

        /*跳转至添加user界面。*/
        function toAddUser() {
            location.href="manage/toAddUser";
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
        <li><a href="manage/toUsersManage">用户管理</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <ul class="seachform1">
            <form action="manage/queryUsers" method="post">
                <li><label>姓名</label><input name="userName" type="text" class="scinput1" value="${user.userName}"/></li>
                <li><label>密码</label><input name="userPwd" type="text" class="scinput1" value="${user.userPwd}"/></li>
                <li><label>&nbsp;&nbsp;</label></li>
                <li><label>&nbsp;&nbsp;</label></li>

                <li><label>所属科室</label>
                    <div class="vocation">
                        <select class="select3" name="offId">
                            <option value="">----请选择科室----</option>
                            <c:forEach var="o" items="${offices}">
                                <option value="${o.offId}" ${user.offId==o.offId?"selected":""}>${o.offName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </li>

                <li><label>权限</label>
                    <div class="vocation">
                        <select class="select3" name="userPrioId">
                            <option value="">----请选择权限----</option>
                            <c:forEach var="p" items="${priorities}">
                                <option value="${p.prioId}" ${user.userPrioId==p.prioId?"selected":""}>${p.prioName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </li>
                <li><label>&nbsp;&nbsp;</label></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input type="submit" class="scbtn" value="查询"/>
                    <label>&nbsp;</label><input type="button" class="scbtn" onclick="toAddUser()" value="新增"/>
                    <label>&nbsp;</label><input type="button" class="scbtn1" id="vv" value="复位"/>
                </li>

            </form>
        </ul>

        <br><br><br><br><br>
        <div class="formtitle"><span>用户信息▽▽▽▽</span></div>

        <table class="tablelist">

            <thead>
                <tr>
                    <th>序号</th>
                    <th>姓名</th>
                    <th>密码</th>
                    <th>所属科室</th>
                    <th>权限</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="u" items="${users}">
                    <tr>
                        <td>${u.userId}</td>
                        <td>${u.userName}</td>
                        <td>${u.userPwd}</td>
                        <td>${u.office.offName}</td>
                        <td>${u.priority.prioName}</td>
                        <td>
                            <a href="javascript:void(0)" onclick="updateUser(${u.userId})" class="tablelink">修改</a>&emsp;
                            <a href="javascript:void(0)" onclick="delUser(${u.userId},'${u.userName}')" class="tablelink"> 删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>
