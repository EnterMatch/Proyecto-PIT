<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>
function check(){
$('#b').load('test.jsp #target');
}
  </script>
 
</head>
<body>
 
<b>Successful Response (should be blank):</b>
<a href="#" onclick="check();">click me</a>
<div id="success"></div>
<b>Error Response:</b>
<div id="error"></div>
<div id="b"></div>
 

</body>
</html>