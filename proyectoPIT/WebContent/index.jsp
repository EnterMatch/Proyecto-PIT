<%@ taglib uri="/struts-tags" prefix="s" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>


<div class="fondo">
  
  <s:form action="bienvenido" method="post" cssClass="login" theme="simple">
  <p class="titulo">Ingreso</p>
	<s:textfield type="text"  placeholder="Usuario" name="usu" />
	<i class="fa fa-user"></i>
	<s:textfield type="password" placeholder="Contraseña" name="cla"/>
	<i class="fa fa-key"></i>
	<br>
    <a href="">Olvido su contraseña?</a>
    
    <s:submit value="Entrar" cssClass="enviar" />
  </s:form>
   
</div>
  
</body>
</html>