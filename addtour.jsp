<%@include file="DBConn.jsp" %>
<%
int tid=Integer.parseInt(request.getParameter("tid"));
PreparedStatement pst=con.prepareStatement("update tournament set status=? where tid=?");
pst.setInt(1,1);
pst.setInt(2,tid);
int i=pst.executeUpdate();
%>
<script>
alert("Tournament request approved")
window.location="adminhome.jsp"
</script>