<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/1
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script type="text/javascript">
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
        <li><a href="#">卡片管理</a></li>
        <li><a href="#">体检卡查询</a></li>
    </ul>
</div>

<div class="formbody">

    <div id="usual1" class="usual">

        <form action="manage/queryCards" method="post">
            <ul class="seachform1">
                <li><label>序号</label><input name="cardId" type="text" class="scinput1" value="${card.cardId}"/></li>
                <li><label>卡片编号</label><input name="cardNo" type="text" class="scinput1" value="${card.cardNo}"/></li>
                <li><label>持卡人姓名</label><input name="perName" type="text" class="scinput1" value="${person.perName}"/></li>
            </ul>

            <ul class="seachform2">

                <li><label>持卡人电话</label><input name="perTele" type="text" class="scinput1" value="${person.perTele}"/></li>
                <li><label>持卡人性别</label>
                    <div class="vocation">
                        <select class="select3" name="perSex">
                            <option value="">null</option>
                            <option value="男" ${person.perSex=="男"?"selected":""}>男</option>
                            <option value="女" ${person.perSex=="女"?"selected":""}>女</option>
                        </select>
                    </div>
                </li>
                <li><label>持卡人血型</label>
                    <div class="vocation">
                        <select class="select3" name="perBlood">
                            <option value="">null</option>
                            <option value="A" ${person.perBlood=="A"?"selected":""}>A型</option>
                            <option value="B" ${person.perBlood=="B"?"selected":""}>B型</option>
                            <option value="AB" ${person.perBlood=="AB"?"selected":""}>AB型</option>
                            <option value="O" ${person.perBlood=="O"?"selected":""}>O型</option>
                        </select>
                    </div>
                </li>

            </ul>

            <ul class="seachform1">
                <li class="sarchbtn">
                    <label>&nbsp;</label>
                    <input type="submit" class="scbtn" value="查询"/>
                    <input type="button" class="scbtn1" value="更多条件"/>
                    <input type="button" class="scbtn2" id="vv" value="复位"/>
                </li>
            </ul>
        </form>

        <script language="javascript">
            $(document).ready(function()
            {
                $(".scbtn1").click(function()
                {
                    if( $(".seachform2").hasClass("hideclass") )
                    {
                        $(".seachform2").removeClass("hideClass");
                    }
                    else
                    {
                        $(".seachform2").addClass("hideClass");
                    }
                });
            });
        </script>

        <script type="text/javascript">
            $(document).ready(function(){
                $(".scbtn1").click(function(){
                    $(".seachform2").fadeIn(200);
                });
            });
        </script>

        <div class="formtitle"><span>体检卡列表</span></div>

        <table class="tablelist">

            <thead>
                <tr>
                    <th>序号</th>
                    <th>卡片编号</th>
                    <th>持卡人姓名</th>
                    <th>持卡人性别</th>
                    <th>持卡人血型</th>
                    <th>持卡人出生年月</th>
                    <th>持卡人电话</th>
                    <th>持卡人住址</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${cards}" var="c">
                <tr>
                    <td>${c.cardId}</td>
                    <td>${c.cardNo}</td>
                    <td>${c.person.perName}</td>
                    <td>${c.person.perSex}</td>
                    <td>${c.person.perBlood}</td>
                    <td>
                        <fmt:formatDate value="${c.person.perBorn}" pattern="yyyy-MM-dd"/>
                    </td>
                    <td>${c.person.perTele}</td>
                    <td>${c.person.perAddr}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>

</div>


</body>

</html>