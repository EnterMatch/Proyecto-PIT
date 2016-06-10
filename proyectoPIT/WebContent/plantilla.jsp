<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<html>
<head>
<title><tiles:insertAttribute name="title" ignore="true"/></title>
<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="js"/>
</head>
<body>
	
	<tiles:insertAttribute name="menu"/>
	<tiles:insertAttribute name="body"/>

</body>
</html>