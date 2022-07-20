<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
String idx=request.getParameter("idx");
String name=request.getParameter("name");
String major=request.getParameter("major");
String field=request.getParameter("field");

try{
	String sql="insert into lecturer0720 values(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, idx);
	pstmt.setString(2, name);
	pstmt.setString(3, major);
	pstmt.setString(4, field);
	pstmt.executeUpdate();
	%><script>
	alert("저장완료");
	location.href="lecturerSelect.jsp";
	</script>
	<% 
}catch(SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>