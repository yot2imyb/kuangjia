<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="static/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="static/easyui/themes/metro-gray/easyui.css"/>
<link rel="stylesheet" href="static/easyui/themes/icon.css"/>
</head>
<body>
	<c:forEach items="${users}" var="u">
		${u.xname}<br/>
	</c:forEach>
	
	<hr/>
	<c:forEach items="${order}" var="o">
		${o.xname}<br/>
	</c:forEach>
	
	
</body>
</html>