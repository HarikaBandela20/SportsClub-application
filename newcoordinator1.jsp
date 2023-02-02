<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String mno=request.getParameter("mno");
String college=request.getParameter("college");
String address=request.getParameter("address");
PreparedStatement pst=con.prepareStatement("insert into coordinator values(?,?,?,?,?,?,?)");
pst.setString(1,null);
pst.setString(2,user);
pst.setString(3,pwd);
pst.setString(4,email);
pst.setString(5,mno);
pst.setString(6,college);
pst.setString(7,address);
int i=pst.executeUpdate();
%>
<script>
  alert("Registered Successfully,Please Login to Continue")
  window.location="coordinator.html"
</script>