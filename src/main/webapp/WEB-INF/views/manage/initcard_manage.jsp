<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/1
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        function delCard(_id) {
            var flag = confirm("是否删除");
            if(flag){
                location.href="manage/delCard?cardId="+_id;
            }
        }
    </script>


</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">卡片管理</a></li>
        <li><a href="#">体检卡初始化</a></li>
    </ul>
</div>

<div class="rightinfo">

    <ul class="prosearch">
        <form action="manage/addCards" method="post">
            <li><label>请输入卡片数量：</label>
                <a><input name="addNo" type="text" class="scinput" /></a>
                <a><input type="submit" class="sure" value="卡片初始化"/></a>
            </li>
        </form>
    </ul>

    <div class="formtitle1"><span>已有卡片详情</span></div>

    <table class="tablelist" >
        <thead>
            <tr>
                <th>序号</th>
                <th>卡片编号</th>
                <th>余额</th>
                <th>是否被使用</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${cards}" var="c">
                <tr>
                    <td>${c.cardId}</td>
                    <td>${c.cardNo}</td>
                    <td>${c.cardMoney}</td>
                    <c:if test="${c.person == null}">
                        <td>否</td>
                    </c:if>
                    <c:if test="${c.person != null}">
                        <td>是</td>
                    </c:if>
                    <td><a href="javaScript:void(0)" onclick="delCard(${c.cardId})" class="tablelink">删除</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>


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
