<%@include file="DBConn.jsp" %>
<%@page import="java.util.Date" %>
<%
int tid=Integer.parseInt(request.getParameter("tid"));
String winner=request.getParameter("winner");
String runner=request.getParameter("second");
Date d=new Date();
String d1=""+d;
PreparedStatement pst=con.prepareStatement("insert into windetails values(?,?,?,?)");
pst.setInt(1,tid);
pst.setString(2,winner);
pst.setString(3,runner);
pst.setString(4,d1);
int i=pst.executeUpdate();

PreparedStatement pst1=con.prepareStatement("update tournament set status=2 where tid=?");
pst1.setInt(1,tid);
int j=pst1.executeUpdate();
%>
<script>
alert("Winners Announced")
window.location="coordinatorhome.jsp"
</script>