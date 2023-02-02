<%@include file="DBConn.jsp" %>
<%
int reqid=Integer.parseInt(request.getParameter("reqid"));
PreparedStatement pst=con.prepareStatement("update userrequests set status=2 where reqid=?");
pst.setInt(1,reqid);
int i=pst.executeUpdate();
%>
<Script>
alert("Student request is Rejected")
window.location="coachhome.jsp"
</script>