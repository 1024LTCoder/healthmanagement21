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

        function confimDel(_pid) {
            var flag=confirm("是否删除");
            if(flag){
                location.href="charge/doDelCard?perId="+_pid;
            }
        }
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
        <li><a href="#">体检人员信息</a></li>
    </ul>
</div>

<div class="formbody">


    <div id="usual1" class="usual">
        <form action="charge/searchById" method="post">
            <li><label>请输入体检人卡片编号:</label><input name="cards.cardNo" type="text" class="scinput1" />
                <label>&nbsp;&nbsp;</label><input type="submit" class="scbtn" value="查询"/></li>
        </form>
        <br>
        <f:forEach var="s" items="${pe}">
        <ul class="seachform1">
            <li><label>序号</label><input type="text" class="scinput1" value="${s.perId}"/></li>
            <li><label>姓名</label><input type="text" class="scinput1" value="${s.perName}" readonly/></li>
            <li><label>性别</label><input type="text" class="scinput1" value="${s.perSex}" readonly/></li>

            <br><br><br>
            <li><label>血型</label><input type="text" class="scinput1" value="${s.perBlood}" readonly/></li>
            <li><label>年龄</label><input value="${s.perAge}" type="text" class="scinput1" readonly/></li>
            <li><label>出生年月</label><input value="${s.perBorn}" type="date" class="scinput1" readonly/></li>

            <br><br><br>
            <li><label>电话</label><input value="${s.perTele}" type="text" class="scinput1" readonly/></li>
            <li><label>住址</label><input value="${s.perAddr}" type="text" class="dfinput" readonly/></li>

            <br><br><br>
            <li><label>卡片编号</label><input value="${s.cards.cardNo}" type="text" class="scinput1" readonly/></li>
            <li><label>就诊卡余额</label><input value="${s.cards.cardMoney}" type="text" class="scinput1" readonly/></li>
            </f:forEach>
        </ul>

    </div>

</div>

<%
    session.removeAttribute("pe");
%>
</body>

</html>