<%@include file="DBConn.jsp" %>
<%
String user=(String)session.getAttribute("UserName");
  String sport=request.getParameter("sport");
  String cname=request.getParameter("cname");
  String address=request.getParameter("address");
  String fdate=request.getParameter("fdate");
  String tdate=request.getParameter("tdate");
  String time=request.getParameter("time");
  int efee=Integer.parseInt(request.getParameter("efee"));
  String cno=request.getParameter("cno");
  PreparedStatement pst=con.prepareStatement("insert into tournament values(?,?,?,?,?,?,?,?,?,?,?)");
  pst.setString(1,null);
  pst.setString(2,sport);
  pst.setString(3,cname);
  pst.setString(4,address);
  pst.setString(5,fdate);
  pst.setString(6,tdate);
  pst.setString(7,time);
  pst.setInt(8,efee);
  pst.setInt(9,0);
  pst.setString(10,cno);
  pst.setString(11,user);
  int i=pst.executeUpdate();
%>
<script>
alert("Tournament details added")
window.location="coordinatorhome.jsp"
</script>