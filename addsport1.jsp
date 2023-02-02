<%@include file="DBConn.jsp" %>
<%
String name=request.getParameter("name");
String desc=request.getParameter("desr");
PreparedStatement pst =con.prepareStatement("insert into sports_info values(?,?)");
pst.setString(1,name);
pst.setString(2,desc);
int i=pst.executeUpdate();
%>
<script>
 alert("Sport details added")
 window.location="adminhome.jsp"
</script>