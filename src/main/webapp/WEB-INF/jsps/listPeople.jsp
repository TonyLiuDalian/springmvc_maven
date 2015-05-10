<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listPeople.jsp' starting page</title>
    
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
  
  
   
   
   
   
   <table border="1">
   <thead>
   <tr>
   <td>编号</td>
   <td>名字</td>
   <td>年龄</td>
   <td>工资</td>
   <td>操作</td>
   </tr>
   </thead>
   <c:forEach var="p" items="${peoples}" varStatus="status">
      <tr>
      <td>${status.count}</td>
      <td>${p.name}</td>
      <td>${p.age}</td>
      <td>${p.salary}</td>
      <td>【<a href="javaScript:edit('${p.id}')">编辑</a>】【<a href="javaScript:delete('${p.id}')">删除</a>】</td>
      </tr>
   </c:forEach>
   </table>
   
   
   
   
  </body>
</html>
