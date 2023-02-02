<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>SportsClub</title>
<!--

TemplateMo 548 Training Studio

https://templatemo.com/tm-548-training-studio

-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
            <a href="index.html" class="logo"><em> SPORTS CLUB</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
  <li class="scroll-to-section"><a href="coordinator.html">Logout</a></li>
                        </ul>        
                       
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
            
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
           <h6 style="font-size:30px;">Welcome Coordinator,<%= session.getAttribute("UserName") %></h6><br><br>
	       <table align="center" width=40% style="font-size:22px;">
		 <tr><td align="Center" colspan=2>Enter Tournament Results</td></tr>
		 <form action="updatetournamnetdetails1.jsp" method="post">
		 <%@include file="DBConn.jsp"%>
	<tr><th>TournamentId</th><th><select name="tid">
	<%
	String tid="";
	  String user=(String)session.getAttribute("UserName");
PreparedStatement pst=con.prepareStatement("select tid from tournament where coordinatorname=? and status=1");
pst.setString(1,user);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	tid=rs.getString(1);
	%> 
   <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
		

<%

}
	%>
</select></th></tr>
<tr><th><input type="submit" value="Select TournamentID" /></th>
<th><input type="reset" value="reset" /></th>
	
		 </form>
		 <tr><td align="center" colspan=2><a href="coordinatorhome.jsp">Back</a></td></tr>
		   </table>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Features Item Start ***** -->
    <section class="section" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2> <em>About US</em></h2>
                        <img src="assets/images/line-dec.png" alt="waves">
                        <p>The main idea of this Sport Club is to notify the information about various
college sports tournaments. This system includes all forms of competitive
games, organized in the different colleges such as basketball, volleyball,
throwball, handball, etc. It exists to promote and develop interest in a
particular sport. It is aimed to provide services, opportunities to any student
player to participate with in a team.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/line-dec.png" alt="First One">
                            </div>
                            <div class="right-content">
                                <h4>Admin</h4>
                                <p>Admin has to register and login in to website. Admin is the one who
manages the database and website. He can add different colleges and sports.
He will intimate the sports tournament information and the registration links
in the application notified by the college sports coordinator. .</p>
                                
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/line-dec.png" alt="second one">
                            </div>
                            <div class="right-content">
                                <h4>Coordinator</h4>
                                <p>A Coordinator has to register and login in to website. He has to update the
sports events and tournament winners to admin. He can register a team from
his college, for the sport events conducted in other colleges as per the
selection list provided by the coach.</p>
                                
                            </div>
                        </li>
                        
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/line-dec.png" alt="fourth muscle">
                            </div>
                            <div class="right-content">
                                <h4>Coach</h4>
                                <p>Coach has to register and login in to website. He can view the updates and
student players request who wants to participate in a specific game, he will
schedule a competition to select the student players and train them, then the
selected student players list will be sent to his college sports coordinator to
make the team register for other college sport tournament.</p>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="assets/images/line-dec.png" alt="training fifth">
                            </div>
                            <div class="right-content">
                                <h4>Student</h4>
                                <p>A Student Player has to register and login to website to request to the coach
and to send feedback to the admin</p>
                            </div>
                        </li>
                        </ul>
                </div>
            </div>
        </div>
    </section>
    
    <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="contact-us">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div id="map">
<h2 align="center"><em>Contact Us</em></h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Your Name*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-12 col-sm-12">
                              <fieldset>
                                <input name="subject" type="text" id="subject" placeholder="Subject">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Message" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button">Send Message</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Us Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2020 , All Rights Reserved
                    
                    - Designed by SIIT</p>
                    
           
                    
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/mixitup.js"></script> 
    <script src="assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

  </body>
</html>