<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<div>
		<div class="navbar-header"
			style="margin-left: 10px; margin-top: 10px;">
			<a class="btn btn-default glyphicon glyphicon-cloud-upload" href="#"
				style="font-size: 15px; height:40px; width: 100px;" onclick="return upload(this)"
				>上传</a>
		</div>
		<div id="menubutton">
			<a class="btn btn-default glyphicon glyphicon-folder-open" href="#"
				role="button"
				style="margin-left: 10px; margin-top: 10px; width: 100px;">&nbsp;新建文件夹</a>
			<div class="btn-group" role="group"
				style="margin-left: 10px; margin-top: 10px;">
				<a class="btn btn-default glyphicon glyphicon-share" href="#">分享</a>
				<a class="btn btn-default glyphicon glyphicon-download-alt" href="#">下载</a>
				<a class="btn btn-default glyphicon glyphicon-trash" href="#" id="delete" onclick="return deleteall()">删除</a>
				<a class="btn btn-default" href="#">重命名</a> <a
					class="btn btn-default" href="#">复制到</a> <a class="btn btn-default"
					href="#">移动到</a> <a class="btn btn-default" href="#"
					style="width: 100px;">推送到云设备</a>
			</div>
			<div class="input-group"
				style="width: 200px; float: right; margin-top: 10px; margin-right: 50px;">
				<input type="text" class="form-control"
					aria-label="Amount (to the nearest dollar)"> <span
					class="input-group-addon glyphicon glyphicon-search"></span>
			</div>
		</div>
	</div>
	<div class="panel panel-default" style="margin-left: 10px; margin-top: 10px">
		<!-- Default panel contents -->
		<div class="panel-heading" >
			<a href="index.action" path="">yun盘 ></a>
			<span id="navPath">
				
			</span>
		</div>

		<table class="table table-hover" id="mytable">
			<thead>
				<tr>
					<th><input type="checkbox" aria-label="..."></th>
					<th colspan="4" width="60%">文件名</th>
					<th>大小</th>
					<th>修改时间</th>
				</tr>
			</thead>
			<tbody id="list" currentPath="">
				
			</tbody>

		</table>
	</div>
