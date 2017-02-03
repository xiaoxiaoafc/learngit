<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>小a卖品后台</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<base href="${pageContext.request.contextPath}/">
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/bootstrap-responsive.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/style-metro.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
<link href="css/style-responsive.css" rel="stylesheet"/>
<link href="css/default.css" rel="stylesheet" id="style_color"/>
<link href="css/uniform.default.css" rel="stylesheet"/>
<link href="css/jquery.gritter.css" rel="stylesheet"/>
<link href="css/daterangepicker.css" rel="stylesheet" />
<link href="css/fullcalendar.css" rel="stylesheet"/>
<link href="css/jquery.easy-pie-chart.css" rel="stylesheet" media="screen"/>
<!-- 新引用 -->
<style type="text/css">
.page-container .li-select-item{cursor: pointer;}
.page-container .li-selected-item:nth-of-type(odd){background-color: gray;}
.page-container .li-selected-item:nth-of-type(even){background-color: yellow;}
</style>
<link href="css/kalendar.css" rel="stylesheet" media="screen"/>
<link rel="shortcut icon" href="image/favicon.ico" />
<!-- 百度地图 -->
	<!-- 手机版本 
<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&ak=3mfYUpG6mu3kSaHlFb11RKtk&v=1.0"></script>
	-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=3mfYUpG6mu3kSaHlFb11RKtk"></script>
</head>
<body class="page-header-fixed">
<div class="header navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid"> <a class="brand" href="index.html"> <img src="../image/logo.png" alt="logo"/> </a> <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse"> <img src="../image/menu-toggler.png" alt="" /> </a>
      <ul class="nav pull-right">
        <li class="dropdown" id="header_notification_bar"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-warning-sign"></i> <span class="badge">6</span> </a> </li>
        <li class="dropdown" id="header_inbox_bar"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-envelope"></i> <span class="badge">5</span> </a> </li>
        <li class="dropdown" id="header_task_bar"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-tasks"></i> <span class="badge">5</span> </a> </li>
        <li class="dropdown user"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img alt="" src="../image/avatar1_small.jpg" /> <span class="username">Bob Nilson</span> <i class="icon-angle-down"></i> </a>
          <ul class="dropdown-menu">
            <li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
<div class="page-container">
  <div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<ul class="page-sidebar-menu">
				<li>
					<div class="sidebar-toggler hidden-phone"></div>
				</li>
				<li>
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search...">
							<input type="button" class="submit" value=" ">
						</div>
					</form>
					<!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>
				<li class="start active ">
					<a href="javascript:void(0)">
					<i class="icon-home"></i>
					<span class="title">信息纵览</span>
					<span class="selected"></span>
					</a>
				</li>	
				
				<c:forEach var="showMenuVo" items="${showMenuVos}">
				<c:if test="${showMenuVo.childMenu.size()  > 0 }">
					<li class="">
					<a href="javascript:void(0);">
					<i class="icon-briefcase"></i> 
					<span class="title">${showMenuVo.meun_name}</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
					
					<c:forEach var="showMenuVoChild" items="${showMenuVo.childMenu}">
						<li>
							<a href="javascript:void(0)"  url="${showMenuVo.url}">
							<i></i>
							${showMenuVoChild.meun_name}</a>
						</li>
					</c:forEach>
						
					</ul>
				</li>
				</c:if>
				</c:forEach>				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
  <div class="page-content" style="padding-bottom:15px;height: 200px">
		
				
			
  </div>
</div>
<div class="footer">
  <div class="footer-inner"> 2013 &copy; Metronic by keenthemes. </div>
  <div class="footer-tools"> <span class="go-top"> <i class="icon-angle-up"></i> </span> </div>
</div>
</body>
<script src="js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="js/jquery.cookie.min.js" type="text/javascript"></script>
<script src="js/jquery.uniform.min.js" type="text/javascript" ></script>
<script src="js/jquery.flot.js" type="text/javascript"></script>
<script src="js/jquery.flot.resize.js" type="text/javascript"></script>
<script src="js/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="js/date.js" type="text/javascript"></script>
<script src="js/daterangepicker.js" type="text/javascript"></script>
<script src="js/jquery.gritter.js" type="text/javascript"></script>
<script src="js/fullcalendar.min.js" type="text/javascript"></script>
<script src="js/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="js/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="js/app.js" type="text/javascript"></script>
<script src="js/index.js" type="text/javascript"></script>
<script src="js/calendar.js" type="text/javascript"></script>
<script src="js/Chart.js"></script>  
<script src="js/Chart.Doughnut.js"></script>
<script type="text/javascript" src = "js/base.js"></script>
</html>
<script>
$(function(){
	$('body').on('click','.page-container .page-sidebar .page-sidebar-menu .sidebar-toggler',function(){
		var cls=$('body').attr('class');
		if(cls.indexOf('page-sidebar-closed')>=0)
			$('body').removeClass('page-sidebar-closed');
		else
			$('body').addClass('page-sidebar-closed');
	});
	$('body').on('click','.page-container .page-sidebar .page-sidebar-menu li',function(){
		var cldul=$(this).children('ul').length;
		if(cldul>0){
			//$('.page-container .page-sidebar .page-sidebar-menu ul').hide();
			var dis=$(this).children('ul').eq(0).css('display');
			if(dis.indexOf('block')>=0){
				if(cldul == 0){
					$(this).children('ul').eq(0).hide(500);
				}
				
			}
			else
				$(this).children('ul').eq(0).show(500);
			  	
		}else{
			var href = $(this).children('a').attr("url");
			var sfun = function(html){
				if(html.indexOf("DOCTYPE") > 0){
					location.href = "user/loginIn";
				}
				$(".page-content").eq(0).html(html);
			}
			requestMthod("menu/list",{},sfun);
		}
	});
});
</script>
