<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   <%
   String loginName = (String)session.getAttribute("KeyName");
   session.setMaxInactiveInterval(20*60);
   if(loginName == null){
   response.sendRedirect("index.jsp");
   return ;
   }
   %>
