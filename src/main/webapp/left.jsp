<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/30
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="js/jquery.js"></script>

    <script type="text/javascript">
        $(function(){
            //导航切换
            $(".menuson .header").click(function(){
                var $parent = $(this).parent();
                $(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();

                $parent.addClass("active");
                if(!!$(this).next('.sub-menus').size()){
                    if($parent.hasClass("open")){
                        $parent.removeClass("open").find('.sub-menus').hide();
                    }else{
                        $parent.addClass("open").find('.sub-menus').show();
                    }


                }
            });

            // 三级菜单点击
            $('.sub-menus li').click(function(e) {
                $(".sub-menus li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function(){
                var $ul = $(this).next('ul');
                $('dd').find('.menuson').slideUp();
                if($ul.is(':visible')){
                    $(this).next('.menuson').slideUp();
                }else{
                    $(this).next('.menuson').slideDown();
                }
            });
        })
    </script>


</head>

<body style="background:#f0f9fd;">
<div class="lefttop"><span></span>菜单列表</div>

<dl class="leftmenu">

    <dd>
        <div class="title">
            <span><img src="images/leftico01.png" /></span>体检工作站
        </div>
        <ul class="menuson">

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">体检工作</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="items/toFindItemsList" target="rightFrame">开单</a></li>
                    <li><a href="javascript:;">打印导捡单和条码</a></li>
                    <li><a href="javascript:;">体验报告打印</a></li>
                </ul>

            </li>

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">统计查询</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="javascript:;">体验综合查询</a></li>
                    <li><a href="charge/toSearchById" target="rightFrame">体验人员查询</a></li>
                </ul>
            </li>

        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="images/leftico01.png" /></span>收费工作站
        </div>
        <ul class="menuson">

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">收费工作</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="charge/toCard" target="rightFrame">建卡</a></li>
                    <li><a href="javascript:;">结算</a></li>
                </ul>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="images/leftico01.png" /></span>医生工作站
        </div>
        <ul class="menuson">

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">医生工作</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="javascript:;">项目接收</a></li>
                    <li><a href="javascript:;">体检小结</a></li>
                    <li><a href="javascript:;">体检总结</a></li>
                </ul>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="images/leftico01.png" /></span>管理工作站
        </div>
        <ul class="menuson">

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">卡片管理</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="manage/toinitcard" target="rightFrame">体检卡初始化</a></li>
                    <li><a href="manage/toquerycard" target="rightFrame">体检卡查询</a></li>
                </ul>
            </li>

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#" target="rightFrame">系统管理</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="javascript:;">人员设置</a></li>
                    <li><a href="javascript:;">角色配置</a></li>
                    <li><a href="javascript:;">权限配置</a></li>
                    <li><a href="javascript:;">菜单配置</a></li>
                    <li><a href="javascript:;">科室设置</a></li>
                    <li><a href="javascript:;">细项配置</a></li>
                    <li><a href="javascript:;">项目配置</a></li>
                    <li><a href="javascript:;">套餐配置</a></li>
                </ul>
            </li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="images/leftico01.png" /></span>通用功能
        </div>
        <ul class="menuson">

            <li>
                <div class="header">
                    <cite></cite>
                    <a href="#">辅助功能</a>
                    <i></i>
                </div>
                <ul class="sub-menus">
                    <li><a href="javascript:;">登录</a></li>
                    <li><a href="javascript:;">退出</a></li>
                    <li><a href="javascript:;">修改密码</a></li>
                </ul>
            </li>

        </ul>
    </dd>



</dl>

</body>
</html>
