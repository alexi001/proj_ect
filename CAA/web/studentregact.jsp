<%@page import="java.sql.*"%>
    <%@page import="com.DB.DBConnection" %>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String firstname = request.getParameter("firstname");
    System.out.println(firstname);
    String lastname = request.getParameter("lastname");
    System.out.println(lastname);
    String dob = request.getParameter("dob");
    System.out.println(dob);
    String gender = request.getParameter("gender");
    System.out.println(gender);
      String email = request.getParameter("email");
    System.out.println(email);
    String contactno = request.getParameter("contactno");
    System.out.println(contactno);
    String password = request.getParameter("password");
    System.out.println(password);
    String cpass = request.getParameter("cpass");
    System.out.println(cpass);
    
    

    
    try{
       
       // String user=null;
        //String password=null;
	 Class.forName("com.mysql.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/vjitiat?user=root&password=12345&useSSL=false");

PreparedStatement ps = co.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");

ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,dob);
ps.setString(4,gender);
ps.setString(5,email);
ps.setString(6,contactno);
ps.setString(7,password);
ps.setString(8,cpass);



ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("studentlogin.html?message=success");
out.println("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    </body>
</html>

