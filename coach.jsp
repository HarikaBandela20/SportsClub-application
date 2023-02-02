<%@include file="DBConn.jsp" %>
<%
String user=request.getParameter("user");
String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement( "select * from coach where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("UserName",user);
	session.setAttribute("Sport",rs.getString(8));
	session.setAttribute("CCollegeName",rs.getString(6));
	response.sendRedirect("coachhome.jsp");
}
else
{%>
   <script>
     alert("Wrong UserName/Password,Try again")
	 window.location="coach.html";
   </script>
<%}
%>