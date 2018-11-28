<!DOCTYPE HTML>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>VJITIAN</title>
	<link rel="stylesheet" href="css/styles.css" type="text/css" />
</head>
<body>
	<div id="header">
		<div class="area">
			<div id="logo">
				<a href="index.html"><img src="images/vjit-logo.png" alt="LOGO" height="100" width="170" /></a>
			</div>
                    <ul id="navigation">
				<li class="selected">
		
			<li class="selected">
				<a href="studenthome.jsp">Home</a>
			</li>
			
			<li>
				<a href="uploadphotos.jsp">Upload Photos</a>
			</li>
                        <li>
				<a href="viewphotos.jsp">VIew Photos</a>
			</li>
			<li>
				<a href="index.html">Logout</a>
			</li>
			
		</ul>
	</div>
                    

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
 <%@page import="java.sql.*"%>
    <%@page import="com.DB.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--<meta name="keywords" content="eco green, gallery theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Eco Green Theme Gallery is a free website template provided by tooplate.com" />-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/stylet.css" />
<link rel="stylesheet" type="text/css" href="css/stylerate.css" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" />


<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
<!-- Arquivos utilizados pelo jQuery lightBox plugin -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="gallery_style.css" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->

<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
    $('.lightbox').lightBox();
});
</script>
<script language="javascript">
    function validation(){
 var a = document.form.username.value;
var b = document.form.userid.value;
var c = document.form.emailid.value;
var d = document.form.password.value;
var e = document.form.mobie.value;
var f = document.form.date.value;
if(a=="")
{
alert("Enter your  username");
document.form.username.focus();
return false;
}
if(b=="")
{
alert("Enter your  userid");
document.form.userid.focus();
return false;
}
if(c=="")
{
alert("Enter Your valid EMAIL_ID");
document.form.emailid.focus();
return false;
 }
 if (c.indexOf("@", 0) < 0)
{
alert("Please Reenter a valid e-mail address.");
document.form.emailid.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please Reenter a valid e-mail address.");
document.form.emailid.focus();
return false;
}
 if(d=="")
{
alert("Enter Your valid password");
document.form.password.focus();
return false;
 }
 if(e=="")
{
alert("Enter Your valid mobile");
document.form.mobile.focus();
return false;
 }
 if(e.indexOf("[0-9]") <0);
{
alert("Enter Your valid mobile");
document.form.mobile.focus();
return false;
 }
 if(f=="")
{
alert("Enter Your valid password");
document.form.data.focus();
return false;
 }
    }
</script>
<!--   Free Website Template by t o o p l a t e . c o m   -->
</head>

<body>
<div id="tooplate_body_wrapper">
	<div id="tooplate_wrapper">
		<div id="tooplate_header">
    
    	
<!--			<div id="site_title"><h1><a rel="nofollow" href="http://www.tooplate.com">Free Website Templates</a></h1></div>
        
			<div id="twitter"><a href="#"></a></div>-->
        
			<div class="cleaner"></div>
		</div>
    
		<div id="tooplate_menu">
			<ul>
			
<!--				<li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>-->
			</ul>    	
        
			<div class="cleaner"></div>
		</div> <!-- end of tooplate_menu -->
    
    
		<div id="tooplate_middle_subpage">
                    <marquee scrollamount="15">  
                        
                        
                        
                        <%
    String user = request.getParameter("userName");
    System.out.println(user);
    String pass = request.getParameter("password");
    System.out.println(pass);
    try{
       
       // String user=null;
        //String password=null;
	Connection con=DBConnection.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select  ID from uploaded_image ");
       boolean found = false;
        while(rs.next())
        {
            
            found = true;
         int id = rs.getInt(1);
		  %>
                  <img src="ImageServlet?id=<%=id%>" onclick="linkMeToPhoto(<%=id%>)" alt="Image" width="200" height="150"/>
                  <%
        }
       if(!found) 
        {
            response.sendRedirect("admin.html?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminact"+e.getMessage());
    }
%>
                        
                        
                    </marquee>
			
                </div>

 <script>
     
      
     
function linkMeToPhoto(id){
    
    document.location.href = "photo.jsp?id="+id;
} 
 </script>
      
    
                    
		</div>
                 
    
		<div id="tm_bottom"></div>
    
		<div id="tooplate_footer">
    	
       
    
		</div> <!-- end of footer -->
        
	</div> <!-- end of wrapper -->
	<div class="cleaner"></div>


</div>


    <!-- end of body wrapper -->
<!--   Free Website Template by t o o p l a t e . c o m   -->
</body>
</html>