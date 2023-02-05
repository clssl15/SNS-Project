<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<%
	//Class.forName("com.mysql.jdbc.Driver");
	//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sns_project", "root", "1111");
	Connection conn = ConnectionPool.get();
	
	String sql = "SELECT id, name, ts from user";
	PreparedStatement stmt = conn.prepareStatement(sql);
	ResultSet rs = stmt.executeQuery();
	String str = "<table align=center border=0>";
	str += "<tr><th colspan=3>가입자 리스트</th></tr>";
	while(rs.next()) {
		str += "<tr><td colspan=3><hr></td></tr>";
		str += "<tr>";
		str += "<td>" + rs.getString("id") + "</td>";
		str += "<td>" + rs.getString("name") + "</td>";
		str += "<td>" + rs.getString("ts") + "</td>";
		str += "</tr>";
	}
	str += "</table>";
	out.print(str);
	rs.close(); stmt.close(); conn.close();
%>