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
				<a href="admin.html">Logout</a>
			</li>
			
		</ul>
	</div>
                  
 <form action="UploadServlet" method="post" enctype="multipart/form-data">
     <br><br>
        <table align="center">
            <tr>
                <td align="right">Name : </td><td> <input type="text" align="left" name="sname"/></td>
            </tr>
            <tr></tr> <tr></tr> <tr></tr>
            <tr style="height: 40px;"><td>Choose File :</td><td> <input name="efile" type="file" id="file"/>    </td></tr>


            <tr style="height: 20px;width: 150px; "><td></td><td><input type="submit" value="Upload" style="height: 30px;width: 90px;"/></td>


                <td><input type="submit" value="Reset" style="height: 30px;width: 90px;"/></td></tr>



        </table>
     
 </form>