<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="core.*" %>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	
	UserDAO dao = new UserDAO();
	if (dao.exists(uid) == false) {
		out.print("NA");
		return;
	}
	if (dao.delete(uid)) {
		out.print("OK");
	}
	else {
		out.print("ER");
	}
%>