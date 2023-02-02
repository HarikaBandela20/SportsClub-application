<%@include file="DBConn.jsp" %>
<%
  int crid=Integer.parseInt(request.getParameter("crid"));
  PreparedStatement pst=con.prepareStatement("update coachrequests set status=1 where crid=?");
  pst.setInt(1,crid);
  int i=pst.executeUpdate();

%>
<script>
alert("Team is allowed to participate");
window.location="coordinatorhome.jsp"
</script>