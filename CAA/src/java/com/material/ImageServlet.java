/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.material;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author harsh sharma
 */
public class ImageServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     //   response.setContentType("text/html;charset=UTF-8");
        ServletOutputStream  out = response.getOutputStream();
        try {
            /* TODO output your page here. You may use following sample code. */
            String id = request.getParameter("id");
            
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vjitiat?user=root&password=12345&useSSL=false");
            String query = "SELECT ContentType,ContentLength,Conent,Width,Height,FileName,Description FROM   uploaded_image WHERE ID = ? ";
            
            
               PreparedStatement ps = con.prepareStatement(query);
               
              

            System.out.println("========================");
            ps.setInt(1, Integer.parseInt(id));
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
            
                InputStream input = rs.getBinaryStream("Conent");
  
                  response.setContentType(rs.getString("ContentType"));
         
           
            byte[] buffer = new byte[1024];
            int len = input.read(buffer);
            while (len != -1) {
                out.write(buffer, 0, len);
                len = input.read(buffer);
            }
      }
                     
            
        } catch(Exception e){
        e.printStackTrace();
        }
              
         finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
