/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectThem;

import com.mysql.jdbc.Connection;
import java.sql.*;

/**
 *
 * @author alexi
 */
public class javaConnect {
    private javaConnect (){
        
    }
    static Connection conn;
    public static Connection connectDb() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/alexi?user=root&password=12345&useSSL=false&verifyServerCertificate=false&allowMultiQueries=true");
        }
        catch(Exception e) {
          System.out.println(e);            
        }
        return conn;
    }
}
