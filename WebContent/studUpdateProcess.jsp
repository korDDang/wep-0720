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
String studno=request.getParameter("studno");
String name=request.getParameter("name");
String dept=request.getParameter("dept");
String hobby[]=request.getParameterValues("hobby");
String hobbysum="";
String position=request.getParameter("position");
String address=request.getParameter("address");
String phone =request.getParameter("phone");
try{
	String sql="update  stud0720 set name=?,dept=?,position=?,address=?,phone=?,hobby=? where studno=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(7, studno);
	pstmt.setString(1, name);
	pstmt.setString(2, dept);
	pstmt.setString(3, position);
	pstmt.setString(4, address);
	pstmt.setString(5, phone);
	for(int i=0;i<hobby.length;i++){
		if(i==0){
			hobbysum=hobby[i];
		}else{
			hobbysum+=","+hobby[i];
		}
	}
	pstmt.setString(6, hobbysum);
	pstmt.executeUpdate();
	%><script>
	alert("수정이 완료되었습니다!");
	location.href="studSelect.jsp";
	</script>
	<% 
}catch(SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>