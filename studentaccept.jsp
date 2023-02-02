<%@include file="DBConn.jsp" %>
<%
int reqid=Integer.parseInt(request.getParameter("reqid"));
PreparedStatement pst=con.prepareStatement("update userrequests set status=1 where reqid=?");
pst.setInt(1,reqid);
int i=pst.executeUpdate();
%>
<Script>
alert("Student request is accepted")
window.location="coachhome.jsp"
</script>