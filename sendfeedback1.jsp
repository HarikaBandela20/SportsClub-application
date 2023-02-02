<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
String user=(String)session.getAttribute("UserName");
String feedback=request.getParameter("feedback");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("insert into feedback values(?,?,?,?)");
pst.setString(1,user);
pst.setString(2,feedback);
pst.setString(3,d1);
pst.setString(4,"Student");
int i=pst.executeUpdate();
%>
<script>
alert("Feedback sent to admin")
window.location="studenthome.jsp"
</script>