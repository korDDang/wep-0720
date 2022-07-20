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

try{
	String sql="delete from lecturer0720 where idx=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, idx);
	pstmt.executeUpdate();
	%><script>
	alert("삭제 완료");
	location.href="lecturerSelect.jsp";
	</script>
	<% 
}catch(SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>