<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/31
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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



        <ul class="seachform1">
            <form action="" method="post">
                <li><label>姓名</label><input name="" type="text" class="scinput1" /></li>
                <li><label>性别</label>
                    <div class="vocation">
                        <select class="select3" name="perSex">
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </div>
                </li>
                <li><label>血型</label>
                    <div class="vocation">
                        <select class="select3" name="perBlood">
                            <option value="A">A型</option>
                            <option value="B">B型</option>
                            <option value="AB">AB型</option>
                            <option value="O">O型</option>
                        </select>
                    </div>
                </li>

                <li><label>出生年月</label><input name="" type="date" class="scinput1" /></li>
                <li><label>电话</label><input name="" type="text" class="scinput1" /></li>
                <li><label>卡号</label><input name="" type="text" class="scinput1" /></li>

                <li><label>住址</label><input name="" type="text" class="dfinput" /></li>

                <li class="sarchbtn"><label>&nbsp;</label>
                    <label>&nbsp;</label><input name="" type="submit" class="scbtn" value="新增"/>
                    <label>&nbsp;</label><input name="" type="reset" class="scbtn1" value="复位"/>
                </li>
            </form>
        </ul>

        <br><br><br><br><br><br><br><br>
        <div class="formtitle"><span>体检人列表</span></div>

        <table class="tablelist">

            <thead>
            <tr>
                <th>卡号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>血型</th>
                <th>出生年月</th>
                <th>电话</th>
                <th>住址</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>20130908</td>
                <td>王金平幕僚：马英九声明字字见血 人活着没意思</td>
                <td>admin</td>
                <td>江苏南京</td>
                <td>2013-09-09 15:05</td>
                <td>已审核</td>
                <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 删除</a></td>
            </tr>
            </tbody>
        </table>

    </div>

</div>


</body>

</html>