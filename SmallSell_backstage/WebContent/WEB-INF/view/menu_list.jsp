<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid" id="loglist">
	<div class="row-fluid">
		<div class="span12">
			<ul class="breadcrumb">
				<li><i class="icon-home"></i> <a href="javascript:return;">主页</a><i
					class="icon-angle-right"></i></li>
				<c:forEach var="menu" items="${titleMenus}">
					<li><a href="javascript:return;">${menu.meun_name}</a> <i
						class="icon-angle-right"></i></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-edit"></i>菜单管理
					</div>
				</div>
				<div class="portlet-body">
					<div class="btn-group ">
						<button class="btn btn-default"><i class="icon-plus">添加</i></button>
						<button class="btn btn-default"><i class="icon-remove">删除</i></button>
					</div>
					<div class="" style="float:right;">
						<input type="text"/><button class="btn btn-success">查询</button>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th></th>
								<th>栏目名称</th>
								<th>栏目地址</th>
								<th>栏目描述</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>www.baidu.com</td>
								<td>这是一个栏目</td>
								<td>启用</td>
								<td>得到</td>
								<td>
									<a class=""><i class="icon-pencil"></i>编辑</a>&nbsp;&nbsp;&nbsp;
									<a class=""><i class="icon-remove"></i>删除</a>
								</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>www.baidu.com</td>
								<td>这是一个栏目</td>
								<td>启用</td>
								<td>得到</td>
								<td>
									<a class=""><i class="icon-pencil"></i>编辑</a>&nbsp;&nbsp;&nbsp;
									<a class=""><i class="icon-remove"></i>删除</a>
								</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>www.baidu.com</td>
								<td>这是一个栏目</td>
								<td>启用</td>
								<td>得到</td>
								<td>
									<a class=""><i class="icon-pencil"></i>编辑</a>&nbsp;&nbsp;&nbsp;
									<a class=""><i class="icon-remove"></i>删除</a>
								</td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

