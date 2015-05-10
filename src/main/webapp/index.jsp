<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <a href="jspsout/add.jsp">01、新增数据</a><br/>
    <a href="getAll.do">02、查看全部数据</a><br/>
    <a href="findAllPeoples.do">03、查询所有人员信息测试(测试)</a><br/>
     <hr/>
     <a href="WEB-INF/jsps/gotojsp.jsp">04、去往jsp页面(测试，WEB-INF下的jsp文件不能直接访问)http://localhost:8088/ssm/WEB-INF/jsps/gotojsp.jsp</a>
     <br/>
     <a href="jspsout/gotojsp.jsp">05、去往jsp页面(测试,项目下的jsp页面可以直接访问)</a>  
  </body>
</html>
