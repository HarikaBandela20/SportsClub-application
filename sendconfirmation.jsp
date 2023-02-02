<%@include file="DBConn.jsp" %>
<%
  int tid=Integer.parseInt(request.getParameter("tid"));
  String user=(String)session.getAttribute("UserName");
  String college=(String)session.getAttribute("CollegeName");
  int status=0;
  PreparedStatement pst=con.prepareStatement("insert into userrequests values(?,?,?,?,?)");
  pst.setString(1,null);
  pst.setString(2,user);
  pst.setString(3,college);
  pst.setInt(4,tid);
  pst.setInt(5,status);
  int i=pst.executeUpdate();
%>
<script>
  alert("Request sent to coach");
  window.location="studenthome.jsp"
</script>