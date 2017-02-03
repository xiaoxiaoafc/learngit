<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="css/bootstrap-table/bootstrap-table.min.css">
<script src="js/bootstrap-table/bootstrap-table.min.js"></script>
<script src="js/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<div class="container-fluid" id="loglist">
	<div class="row-fluid">
		<div class="span12">
			<ul class="breadcrumb">
				<li><i class="icon-home"></i> <a href="javascript:return;">主页</a><i class="icon-angle-right"></i></li>
				<c:forEach var = "menu" items="${titleMenus}">
				   <li><a href="javascript:return;">${menu.meun_name}</a> <i class="icon-angle-right"></i></li>
				</c:forEach>
			</ul>
			<!-- END PAGE TITLE & BREADCRUMB-->
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
				<div class="portlet-body no-more-tables">
					<div id="toolbar" class="btn-group">
						<button id="btn_add" type="button" class="btn btn-default">
							<i class=" icon-plus"></i>新增
						</button>
						<button id="btn_edit" type="button" class="btn btn-default">
							<i class="icon-pencil"></i>修改
						</button>
						<button id="btn_delete" type="button" class="btn btn-default">
							<i class="icon-remove"></i>删除
						</button>
					</div>
					<table data-toggle="table" data-pagination="true"
						data-pagination-loop="true" data-search="true"
						data-show-refresh="true" data-show-columns="true"
						data-search-align="right" data-toolbar="#toolbar"
						data-buttons-align="right">
						<thead>
							<tr>
								<th data-field="state" data-checkbox="true">Item ID</th>
								<th>Item Name</th>
								<th>Item Price</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Item 1</td>
								<td>$1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Item 2</td>
								<td>$2</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
