/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectThem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alexi
 */
public class signServlet extends HttpServlet {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
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
        response.setContentType("text/html;charset=UTF-8");
        conn=javaConnect.connectDb();
        PrintWriter out=response.getWriter();
        try {
            int x=1;
            String fn=request.getParameter("fname");
            String ln=request.getParameter("lname");
            String em=request.getParameter("email");
            String pa=request.getParameter("pass");
            String cp=request.getParameter("cpass");
            String ci=request.getParameter("city");
            String mo=request.getParameter("mobile");
            String ge=request.getParameter("Gender");
            
            String sql="insert into signUp values(?,?,?,?,?,?,?,?)";
            ps=(PreparedStatement)conn.prepareStatement(sql);
            ps.setString(1,fn);
            ps.setString(2,ln);
            ps.setString(3,em);
            ps.setString(4,pa);
            ps.setString(5,cp);
            ps.setString(6,ci);
            ps.setString(7,mo);
            ps.setString(8,ge);
            ps.executeUpdate();
            out.println("<script>alert('Sign in successful');window.location.href='index.html';</script>");
            
            
            
        }
        catch(Exception e) {
            System.out.println(e);
            
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
