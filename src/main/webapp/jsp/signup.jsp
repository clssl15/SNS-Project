<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="core.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String upass = request.getParameter("ps");
	String uname = request.getParameter("name");
	
	UserDAO dao = new UserDAO();
	if(dao.exists(uid)){
		out.print("EX");
		return;
	}
	
	if(dao.insert(uid, upass, uname)){
		session.setAttribute("id",uid);
		out.print("OK");
	}
	else{
		out.print("ER");
	}
%>