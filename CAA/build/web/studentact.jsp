<%@page import="java.sql.*"%>
<%@page import="com.DB.DBConnection" %>
<%@ page session="true" %>
<%
    String user = request.getParameter("email");
    System.out.println(user);
    String pass2 = request.getParameter("password");
    System.out.println(pass2);
    try{
       
       // String user=null;
        //String password=null;
	 Class.forName("com.mysql.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/vjitiat?user=root&password=12345&useSSL=false");
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from student where email='"+user+"' and password='"+pass2+"'");
       if(rs.next())
        {
         String  user1 = rs.getString(6);
		   session.setAttribute("user",user1);
		   System.out.println("User:"+user);
			response.sendRedirect("studenthome.jsp");
        }
       else 
        {
            response.sendRedirect("student.html?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in studentact"+e.getMessage());
    }
%>



