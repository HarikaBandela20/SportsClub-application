<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement( "select * from coordinator where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("UserName",user);
	session.setAttribute("CName",rs.getString(6));
	response.sendRedirect("coordinatorhome.jsp");
}
else
{%>
   <script>
     alert("Wrong UserName/Password,Try again")
	 window.location="coordinator.html";
   </script>
<%}
%>