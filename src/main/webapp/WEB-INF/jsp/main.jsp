<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="static/easyui/themes/metro/easyui.css"/>
<link rel="stylesheet" href="static/easyui/themes/icon.css"/>
</head>
<body >
	<script type="text/javascript">
		$(function(){
			//点击折叠面板中的功能按钮，创建一个新的tab
			$(".fun").click(function(){
				//获得按钮的内容
				var t = $(this).text();
				//获得按钮的自定义路径
				var h = $(this).attr("data-href");
				//判断以该内容为标题的标签卡是否存在
				if($("#tt").tabs("exists",t)){
					//打开对应的标签卡
					$("#tt").tabs("select",t);
					return;
				}
				//不存在则新建一个标签卡
				$("#tt").tabs("add",{
						title:t,//标题
						href:h,//得到访问路径，访问页面内容
						closable:true,//是否可关闭
						selected:true//是否选中
				});
			});
			
			//当用户点击移除，关闭当前打开的选项卡
			$("#tab-remove").click(function(){
				//获取选中的标签页面板
				var tab = $("#tt").tabs("getSelected");
				var index = $("#tt").tabs("getTabIndex",tab);
				//如果是工作台就不关闭
				if(index==0){
					return;
				}
				$("#tt").tabs("close",index);
			});
			
			//关闭所有
			$("#tab-clear").click(function(){
				var tabs = $("#tt").tabs("tabs");
				for(var i=tabs.length-1;i>0;i--){
					$("#tt").tabs("close",i);
				}
			});
		});
	</script>
	<div class="easyui-layout" data-options="fit:true,border:false">
	    <div data-options="region:'north',border:false" style="height:100px">
	    	<h1>医疗管理系统</h1>
	    </div>
	    <div data-options="region:'west',title:'功能导航',split:true,collapsible:false" style="width:200px;">
	    	<div id="aa" class="easyui-accordion" data-options="fit:true,border:false">
			    <div title="门诊管理" data-options="iconCls:'icon-menzhen'" style="overflow:auto;">
			    	<a class="fun easyui-linkbutton" data-href="tab-cardmgr" style="width:190px">医疗卡管理</a>
			    	<a class="fun easyui-linkbutton" data-href="tab-registration" style="width:190px">挂号</a>
			    </div>
			    <div title="住院管理" data-options="iconCls:'icon-zhuyuan'" style="">
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">住院登记</a>
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">出院登记</a>
			    </div>
			    <div title="药库管理" data-options="iconCls:'icon-yaoku'">
			    	<a class="fun easyui-linkbutton " data-href="dept-list" style="width:190px">采购计划</a>
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">采购订单</a>
			    </div>
			    <div title="药房管理" data-options="iconCls:'icon-yaofang'">
			    	<a class="fun easyui-linkbutton " data-href="dept-list" style="width:190px">采购计划</a>
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">采购订单</a>
			    </div>
			    
			     <div title="权限管理" data-options="iconCls:'icon-quanxian'">
			    	<a class="fun easyui-linkbutton " data-href="dept-list" style="width:190px">采购计划</a>
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">采购订单</a>
			    </div>
			     <div title="体检管理" data-options="iconCls:'icon-tijian'">
			    	<a class="fun easyui-linkbutton " data-href="dept-list" style="width:190px">采购计划</a>
			    	<a class="fun easyui-linkbutton" data-href="dept-list" style="width:190px">采购订单</a>
			    </div>
			</div>
	    
	    </div>
	    <div data-options="region:'center'" style="background:#eee;">
	    	<div id="tt" class="easyui-tabs" data-options="fit:true,border:false,tools:'#tab-tools'">
			    <div title="工作台" >
					<div class='easyui-panel' data-options="fit:true" style="border:none;background:url('static/images/work.jpg')"></div>
			    </div>
			</div>
	    </div>
	    <!-- 标签卡的工具栏 -->
	    <div id="tab-tools" style="border-left:none;border-right:none;border-top:none">
			<a id="tab-remove" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-remove"></a>
			<a id="tab-clear" href="#" class="easyui-linkbutton" plain="true" iconCls="icon-cancel"></a>
		</div>
	</div>
</body>
</html>