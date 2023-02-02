<%@include file="DBConn.jsp" %>
<%
String cname=request.getParameter("cname");
String district=request.getParameter("district");
String address=request.getParameter("address");
int pin=Integer.parseInt(request.getParameter("pincode"));
PreparedStatement pst=con.prepareStatement("insert into college values(?,?,?,?,?)");
pst.setString(1,null);
pst.setString(2,cname);
pst.setString(3,district);
pst.setString(4,address);
pst.setInt(5,pin);
int i=pst.executeUpdate();
%>
<script>
  alert("college added")
  window.location="adminhome.jsp"
</script>