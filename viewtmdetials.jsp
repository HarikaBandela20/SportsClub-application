    <table align="center" style="font-size:18px;color:black" width=100% border=2>
	<%@include file="DBConn.jsp" %>
	<tr><th>Sport</th><TH>College Name</th><th>Address</th><th>From date</th>
	<th>To Date</th><th>Start Time</th><th>Entry Fee</th><th>Coordinator Name</th><th>Contact Number</th></tr>
	<%
	   int tid=Integer.parseInt(request.getParameter("tid"));
PreparedStatement pst=con.prepareStatement("Select * from tournament where tid=?");
pst.setInt(1,tid);
ResultSet rs=pst.executeQuery();
while(rs.next())
{%>
    <tr>
	   <th><%= rs.getString(2) %></th>
	   <th><%= rs.getString(3) %></th>
	   <th><%= rs.getString(4) %></th>
	   <th><%= rs.getString(5) %></th>
	   <th><%= rs.getString(6) %></th>
	   <th><%= rs.getString(7) %></th>
	   <th><%= rs.getString(8) %></th>
<th><%= rs.getString(11) %></th>
<th><%= rs.getString(10) %></th>

	</tr>
<%}
	%>
	<Tr><td align="center" colspan=9><a href="JavaScript:window.close()">Close</a></td></tr>
	</table>
	