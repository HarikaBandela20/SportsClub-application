<%@include file="DBConn.jsp" %>
<%
  int tid=Integer.parseInt(request.getParameter("tid"));
  String user=(String)session.getAttribute("UserName");
  String college=(String)session.getAttribute("CCollegeName");
  PreparedStatement pst=con.prepareStatement("insert into coachrequests values(?,?,?,?,?)");
  pst.setString(1,null);
  pst.setString(2,user);
  pst.setString(3,college);
  pst.setInt(4,tid);
  pst.setInt(5,0);
  int i=pst.executeUpdate();
%>
<script>
alert("Request forwarded to coordinator");
window.location="coachhome.jsp"
</script>