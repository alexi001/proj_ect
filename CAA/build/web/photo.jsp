
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
 <%@page import="java.sql.*"%>
    <%@page import="com.DB.DBConnection" %>
    
    <%
    
	Connection con=DBConnection.getCon();
        Statement st = con.createStatement();
        int imageId = Integer.parseInt( request.getParameter("id") );
    %>
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

<div  >
    
   <img src="ImageServlet?id=<%=request.getParameter("id")%>" alt="Image" width="400" height="250"/>
</div>


      <%
     
          if(request.getParameter("addLike")!=null&&request.getParameter("addLike").equalsIgnoreCase("true")){
       
        
       
       PreparedStatement pstmt = con.prepareStatement("INSERT INTO image_comments(IMAGEID,Liked,commented)VALUES( ?, ?, ?)");
       
       pstmt.setInt(1, imageId);
       pstmt.setInt(2, 1);
       pstmt.setNull(3, java.sql.Types.VARCHAR);
       
        int i  = pstmt.executeUpdate();
          }
          
          
if(request.getParameter("addComments")!=null&& request.getParameter("addComments").equalsIgnoreCase("true")){
    PreparedStatement pstmt2 = con.prepareStatement("INSERT INTO image_comments(IMAGEID,Liked,commented)VALUES( ?, ?, ?)");
       
       pstmt2.setInt(1, imageId);
       pstmt2.setNull(2, java.sql.Types.INTEGER);
       pstmt2.setString(3, request.getParameter("comment"));
       
        int i2  = pstmt2.executeUpdate();
   
 } 
 
int total_likes = 0;
int total_comments = 0;

 ResultSet rs = st.executeQuery("select count(*) from image_comments where IMAGEID ="+imageId+" AND  Liked= 1 ");
 
 if(rs.next()){
 total_likes = rs.getInt(1);
 }



 ResultSet rs2 = st.executeQuery("select count(*) from image_comments where IMAGEID ="+imageId+" AND commented is not null ");

if(rs2.next()){
 total_comments = rs2.getInt(1);
 }

 
String[] allComments = new String[total_comments];

ResultSet rs3 = st.executeQuery("select commented from image_comments where IMAGEID ="+imageId+" AND commented is not null ");

int itr = 0;
while(rs3.next()){
 allComments[itr++] = rs3.getString(1);
 }


%>
       


<br> 
 <img src ="images/images.png" onclick="addLike()" width="50" heigh='50'>  total likes <%= total_likes %>   
 <br>
 <br>
 
 Total Comments <%= total_comments %>  :
 <br>
 <%for( String comm :allComments ) {%>
 <br><p><%=comm%></p>
 <% } %>
 
 <textarea  rows='3' cols ='30' name ='comment' id='comment'  > </textarea> 
     <br>
<input type='button' value ='Comment' onclick="addComment()" />
 
 <script>
     
     var imgID = <%= request.getParameter("id")%>
     
function addLike(){
    
    document.location.href = "photo.jsp?id="+imgID+"&addLike=true";
}
function addComment(){
    
    document.location.href = "photo.jsp?id="+imgID+"&addComments=true&comment="+document.getElementById("comment").value;
}
 </script>
    
</body>
</html>
                    
    
