<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Metronic | Admin Dashboard Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
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
					<a href="index.html">
					<i class="icon-home"></i>
					<span class="title">信息纵览</span>
					<span class="selected"></span>
					</a>
				</li>				
				<li class="">
					<a href="javascript:;">
					<i class="icon-briefcase"></i> 
					<span class="title">基础功能</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="">
							<i></i>
							能耗首页</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能耗地图</a>
						</li>
						<li>
							<a href="warning.html">
							<i></i>
							报警管理</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能源报表</a>
						</li>
						<li>
							<a href="">
							<i></i>
							建筑导航</a>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
					<i class="icon-briefcase"></i> 
					<span class="title">数据分析</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="">
							<i></i>
							能耗预测</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能耗折算</a>
						</li>
						<li>
							<a href="">
							<i></i>
							全局能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							楼宇能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							业务能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							区域能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							设备能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							同类能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							历史能效分析</a>
						</li>
						<li>
							<a href="">
							<i></i>
							面积对比情况</a>
						</li>
					</ul>
				</li>
				<li class="">
					<a href="javascript:;">
					<i class="icon-gift"></i> 
					<span class="title">能耗监管</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="">
							<i></i>
							能耗报告</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能耗查询统计</a>
						</li>
						<li>
							<a href="">
							<i></i>
							历史报警查询</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能耗分类分项监测</a>
						</li>
					</ul>
				</li>
				<li>
					<a class="active" href="javascript:;">
					<i class="icon-sitemap"></i> 
					<span class="title">管理应用</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="">
							<i></i>
							财务管理</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能源PMC</a>
						</li>
						<li>
							<a href="">
							<i></i>
							能源绩效管理</a>
						</li>
						<li>
							<a href="">
							<i></i>
							建筑审计管理</a>
						</li>
						<li>
							<a href="">
							<i></i>
							节能项目云监管</a>
						</li>
						<li>
							<a href="">
							<i></i>
							中央空调云监管</a>
						</li>
					</ul>
				</li>				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
  <div class="page-content" style="padding-bottom:15px;">
    <div class="container-fluid">
      <div class="row-fluid margin-top-20">
	  	<div class="span9">
	  		<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption"><i class="icon-reorder"></i>某某城市</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a>
						<a href="#portlet-config" data-toggle="modal" class="config"></a>
						<a href="javascript:;" class="reload"></a>
						<a href="javascript:;" class="remove"></a>
					</div>
				</div>
				<div class="portlet-body light-grey" id="my-baidu-map" style="height:250px;"></div>
			</div>
	  	</div>
	  	<div class="span3">
			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption"><i class="icon-reorder"></i>建筑列表</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a>
						<a href="#portlet-config" data-toggle="modal" class="config"></a>
						<a href="javascript:;" class="reload"></a>
						<a href="javascript:;" class="remove"></a>
					</div>
				</div>
				<div class="portlet-body light-grey" style="height:250px;overflow: auto;">
					<ol style="padding: 0;margin: 0;">
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院力学研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院物理研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院自动化研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院过程工程研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院地理科学与资源研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院国家天文台</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院遥感与数字地球研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院动物研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院微生物研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院遗传与发育生物学研究所&nbsp;&nbsp;0T</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院生物物理研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中科院心理研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院上海微系统与信息技术研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院武汉岩土力学研究所</li>
						<li style="padding: 0;margin: 0;" class="li-select-item">中国科学院武汉植物园</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
      <div class="row-fluid">
	  	<div class="span6">
			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption"><i class="icon-reorder"></i>单位简介</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a>
						<a href="#portlet-config" data-toggle="modal" class="config"></a>
						<a href="javascript:;" class="reload"></a>
						<a href="javascript:;" class="remove"></a>
					</div>
				</div>
				<div class="portlet-body">
					<div class="row-fluid">
						<div class="span3"><img src="../image/u122_normal.png"></div>
						<div class="span9">
					  中国科学院（Chinese Academy of Sciences），国家最
                      高学术机构， 中国自然科学与高新技术的综合研究与发展中
                      心。中国科学院有6个学部（数学物理学部、化学部、生命科
                      学和医学学部、地学部、信息技术科学部、技术科学部），
                      12个分院（沈阳、长春、上海、南京、武汉、广州、成都、昆明、西安、兰州、新
					  疆、重庆）、104家直属研究机构、4个国家实验室、85个国家重点实验室、153个中国科学院
					  重点实验室、19个国家工程技术研究中心、10个国家工程实验室以及212个野外观测台站，3
					  所高等学校、4个文献情报中心、3个技术支撑机构和2个新闻出版单位，全院科研人员
					  达5万余人，分布在全国20多个省（市）。
						</div>
					</div>
				</div>
			</div>
		</div>
	  	<div class="span6">			
			<div class="portlet box purple">
				<div class="portlet-title">
					<div class="caption"><i class="icon-reorder"></i>能耗排名</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a>
						<a href="#portlet-config" data-toggle="modal" class="config"></a>
						<a href="javascript:;" class="reload"></a>
						<a href="javascript:;" class="remove"></a>
					</div>
				</div>
				<div class="portlet-body" >
					<ul  class="list-group" style="float: right;padding-right: 50px;">
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
						<li class="list-group-item li-select-item">选项1</li>
					</ul>
					<ul  class="list-group" style="padding-left: 50px;">
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>总能耗</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>电</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>水</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>天然气</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>蒸汽</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>集中供热</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>集中供冷</li>
						<li class="list-group-item"><input type="checkbox" class="checkbox"/>其它</li>
				</div>
			</div>
		</div>
      </div>
      <div class="row-fluid">
      	<div class="span6">
			<div class="portlet box blue calendar">
				<div class="portlet-title">
					<div class="caption"><i class="icon-calendar"></i>Calendar</div>
				</div>
				<div class="portlet-body light-grey">
					<div id="calendar"></div>
		     		本日能耗：<br/>
		     		6887.8kwh<br/>
		     		上月工作日平均能耗：<br/>
		     		9339.3kwh<br/>
		     		上月非工作日平均能耗：<br/>
		     		9550.8kwh<br/>
				</div>
			</div>
      	</div>
      	<div class="span6">		
      		<div class="portlet box purple">
				<div class="portlet-title">
					<div class="caption"><i class="icon-calendar"></i>前三名</div>
					<div class="actions">
						<a href="javascript:;" class="btn yellow easy-pie-chart-reload"><i class="icon-repeat"></i> Reload</a>
					</div>
				</div>
				<div class="portlet-body">
					<div class="row-fluid">
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number transactions easyPieChart" data-percent="55" style="width: 75px; height: 75px; line-height: 75px;"><span>+55</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">Transactions <i class="m-icon-swapright"></i></a>
							</div>
						</div>
						<div class="margin-bottom-10 visible-phone"></div>
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number visits easyPieChart" data-percent="85" style="width: 75px; height: 75px; line-height: 75px;"><span>+85</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">New Visits <i class="m-icon-swapright"></i></a>
							</div>
						</div>
						<div class="margin-bottom-10 visible-phone"></div>
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number bounce easyPieChart" data-percent="46" style="width: 75px; height: 75px; line-height: 75px;"><span>-46</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">Bounce <i class="m-icon-swapright"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portlet box purple">
				<div class="portlet-title">
					<div class="caption"><i class="icon-calendar"></i>后三名</div>
					<div class="actions">
						<a href="javascript:;" class="btn yellow easy-pie-chart-reload"><i class="icon-repeat"></i> Reload</a>
					</div>
				</div>
				<div class="portlet-body">
					<div class="row-fluid">
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number transactions easyPieChart" data-percent="55" style="width: 75px; height: 75px; line-height: 75px;"><span>+55</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">Transactions <i class="m-icon-swapright"></i></a>
							</div>
						</div>
						<div class="margin-bottom-10 visible-phone"></div>
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number visits easyPieChart" data-percent="85" style="width: 75px; height: 75px; line-height: 75px;"><span>+85</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">New Visits <i class="m-icon-swapright"></i></a>
							</div>
						</div>
						<div class="margin-bottom-10 visible-phone"></div>
						<div class="span4">
							<div class="easy-pie-chart">
								<div class="number bounce easyPieChart" data-percent="46" style="width: 75px; height: 75px; line-height: 75px;"><span>-46</span>%<canvas width="75" height="75"></canvas></div>
								<a class="title" href="#">Bounce <i class="m-icon-swapright"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="portlet box purple">
				<div class="portlet-title">
					<div class="caption"><i class="icon-calendar"></i>饼状图 </div>
					<div class="actions">
						<a href="javascript:;" class="btn yellow easy-pie-chart-reload"><i class="icon-repeat"></i> Reload</a>
					</div>
				</div>
				<div class="portlet-body">
					<div class="row-fluid">
						<div class="span6">
						<canvas id="chart-area"/>
						</div>
						<div class="span6">
						<ul>
							<li style="border-left:5px solid #F7464A;padding-left: 5px;line-height: 13px;height: 26px;margin-top: 1px;">1<br>1</li>
							<li style="border-left:5px solid #E2EAE9;padding-left: 5px;line-height: 13px;height: 26px;margin-top: 1px;">2<br>2</li>
							<li style="border-left:5px solid #D4CCC5;padding-left: 5px;line-height: 13px;height: 26px;margin-top: 1px;">3<br>3</li>
							<li style="border-left:5px solid #949FB1;padding-left: 5px;line-height: 13px;height: 26px;margin-top: 1px;">4<br>4</li>
							<li style="border-left:5px solid #4D5360;padding-left: 5px;line-height: 13px;height: 26px;margin-top: 1px;">5<br>5</li>
						</ul>
						</div>
					</div>
				</div>
			</div>
      </div>
      </div>
      <div class="row-fluid">
      	<div class="span12">
	      	<div class="portlet box blue calendar">
					<div class="portlet-title">
						<div class="caption"><i class="icon-calendar"></i>柱状图</div>
					</div>
					<div class="portlet-body light-grey">
						<p>
							<select style="width:125px">
								<option selected="selected">全部能耗类型</option>
								<option>电</option>
								<option>水</option>
								<option>热</option>
								<option>汽</option>
								<option>冷</option>
								<option>煤</option>
								<option>油</option>
							</select>
							<select style="width:65px" id="zhu_month">
								<option>日</option>
								<option>周</option>
								<option selected="selected">月</option>
								<option>年</option>
								<option>年度</option>
							</select>
							<span style="float: right;border-left:20px solid rgb(151,187,205);padding-left: 3px;">上月</span>
							<span style="float: right;border-left:20px solid rgb(220,220,220);padding-left: 3px;padding-right: 5px;">本月</span>
						</p>
						<p><span>当月能耗：56.7 tce</span><span>同期比较： 78.8 % 相比上月同期能耗减少了 210.6 tce</span></p>
						<canvas id="my-chart" height="100px"></canvas>
					</div>
			</div>
      	</div>
      </div>
      <div class="span12">
      
      </div>
    </div>
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
</html>
<script type="text/javascript">  
$(function(){
	var map = new BMap.Map("my-baidu-map");  
	var point = new BMap.Point(113.949671,22.547197);
	map.centerAndZoom(point, 15);
	map.addEventListener("click", function(){    
		 window.location.href="map.html";
		});
    Index.initCalendar(); // init index page's custom scripts
    Index.initMiniCharts();
})
</script>
<script>
//条形住对比报表
	var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
	var barChartData = {
		labels : ["1","2","3","4","5","6","7","8","9","10","11","12","13"],
		datasets : [
			{
				fillColor : "rgba(220,220,220,0.5)",
				strokeColor : "rgba(220,220,220,0.8)",
				highlightFill: "rgba(220,220,220,0.75)",
				highlightStroke: "rgba(220,220,220,1)",
				data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,0.8)",
				highlightFill : "rgba(151,187,205,0.75)",
				highlightStroke : "rgba(151,187,205,1)",
				data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			}
		]

	}
	
	var doughnutData = [{value: 30,color:"#F7464A",label: "One"},{value : 50,color : "#E2EAE9"},{value : 100,color : "#D4CCC5"},{value : 40,color : "#949FB1"},{value : 120,color : "#4D5360"}]
	window.onload = function(){
		var ctx = document.getElementById("my-chart").getContext("2d");
		window.myBar = new Chart(ctx).Bar(barChartData, {
			responsive : true
		});
		var ctx1 = document.getElementById("chart-area").getContext("2d");
		window.myDoughnut = new Chart(ctx1).Doughnut(doughnutData, {responsive : true});
	}
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
			if(dis.indexOf('block')>=0)
				$(this).children('ul').eq(0).hide(500);
			else
				$(this).children('ul').eq(0).show(500);
		}
	});
	$('body').on('click','.page-container .remove',function(){
		$(this).remove();
	});
	$('body').on('change','#zhu_month',function(){
		$(this).parent().children('span').eq(0).text('上'+$(this).val());
		$(this).parent().children('span').eq(1).text('本'+$(this).val());
	});
	$('body').on('click','.page-container .collapse,.expand',function(){
		if($(this).hasClass('expand')==true){
			$(this).removeClass('expand');
			$(this).addClass('collapse');
			$(this).parent().parent().parent().children('.portlet-body').show(300);
		}else{
			$(this).removeClass('collapse');
			$(this).addClass('expand');
			$(this).parent().parent().parent().children('.portlet-body').hide(300);
		}
	});
	$('body').on('click','.page-container .li-select-item',function(){
		if($(this).hasClass('li-selected-item')==true){
			$(this).removeClass('li-selected-item');
		}else{
			$(this).addClass('li-selected-item');
		}
	});
});
</script>
