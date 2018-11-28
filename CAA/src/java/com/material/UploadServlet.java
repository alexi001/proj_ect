package com.material;
 
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 

/**
 *
 * @author harsh sharma
 */
@MultipartConfig
public class UploadServlet extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
       res.setContentType("text/html;charset=UTF-8");
         

        PrintWriter out = res.getWriter();
        
 	
        try {
            Part filePart = req.getPart("efile");
            String subject = filePart.getName();
            
            InputStream inputStream = null;
          //  String filename = nreq.getParameter("efile");

            
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
   
                }
                
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vjitiat?user=root&password=12345&useSSL=false");

            String query = "INSERT INTO uploaded_image (ContentType,ContentLength,Conent,Width,Height,FileName,Description) VALUES (?,?,?,?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(query);

            System.out.println("========================");
            ps.setString(1, filePart.getContentType());
            ps.setDouble(2, filePart.getSize()); 
            if(inputStream!=null){
                 ps.setBlob(3, inputStream);
            }
            else{
                ps.setNull(3, java.sql.Types.BLOB);
            }
             ps.setNull(4, java.sql.Types.INTEGER);
             ps.setNull(5, java.sql.Types.INTEGER);
             
               ps.setString(6, filePart.getName());
             ps.setString(7, req.getParameter("sname"));
            
            
            System.out.println("hi---------------");

            int i = ps.executeUpdate();

            System.out.println(i);
            if (i == 1) {
                out.println("Successfully Uploaded ");
                
                RequestDispatcher rs = req.getRequestDispatcher("uploadphotos.jsp");
                rs.forward(req, res);
                                out.println("Successfully Uploaded ");
                
            } else {
                out.println("File Upload Failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
        out.close();
        }
    }

}
