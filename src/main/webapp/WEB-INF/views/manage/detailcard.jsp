<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/3
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script type="text/javascript" src="js/jquery.js"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>
</head>

<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a>卡片管理</a></li>
        <li><a href="manage/toquerycard">体检卡查询</a></li>
    </ul>
</div>
    <div class="formtitle1"><span>体检卡信息</span></div>

    <table class="tablelist">
        <c:forEach var="c" items="${card}">
            <tr>
                <td><b>卡片编号</b></td>
                <td>${c.cardNo}</td>
                <td><b>持卡人姓名</b></td>
                <td>${c.person.perName}</td>
                <td><b>持卡人余额</b></td>
                <td>${c.cardMoney}</td>
            </tr>
            <tr>
                <td><b>性别</b></td>
                <td>${c.person.perSex}</td>
                <td><b>年龄</b></td>
                <td>${c.person.perSex}</td>
                <td><b>血型</b></td>
                <td>${c.person.perBlood}</td>
            </tr>

            <tr>
                <td><b>手机号码</b></td>
                <td colspan="2">${c.person.perTele}</td>
                <td><b>出生年月</b></td>
                <td colspan="2"><fmt:formatDate value="${c.person.perBorn}" pattern="yyyy-MM-dd"/> </td>
            </tr>
            <tr>
                <td><b>地址</b></td>
                <td colspan="5">${c.person.perAddr}</td>
            </tr>
        </c:forEach>
    </table>




    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="images/ticon.png" /></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" type="button"  class="sure" value="确定" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>

    </div>




</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>

</body>

</html>
