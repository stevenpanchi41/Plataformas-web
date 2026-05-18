<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

String email =
request.getParameter("txtEmail");

String pass =
request.getParameter("txtClave");

if(email == null || pass == null){

response.sendRedirect("login.jsp");

return;

}

if(email.endsWith("@admin.com")){

session.setAttribute(
"usuario",
email
);

session.setAttribute(
"tipo",
"admin"
);

response.sendRedirect(
"index.jsp"
);

}else{

session.setAttribute(
"usuario",
email
);

session.setAttribute(
"tipo",
"cliente"
);

response.sendRedirect(
"servicios.jsp"
);

}

%>