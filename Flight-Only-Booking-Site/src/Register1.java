
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register1
 */
@WebServlet("/Register1")
public class Register1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String Username=request.getParameter("Username");
     String Email=request.getParameter("Email");
     String Password=request.getParameter("Password");
    String UsernamePrevious=Username;
    String PasswordPrevious=Password;
     PrintWriter out=response.getWriter();
     HttpSession session=request.getSession(true);
     Connection c=null;
     try{
     Class.forName("com.mysql.cj.jdbc.Driver");
      c =DriverManager.getConnection("jdbc:mysql://localhost:3306/jagdip?userSSL=false","root","");
     if(c!=null){System.out.println("connection established");}
     else{System.out.println("not established");}
   PreparedStatement pt=c.prepareStatement("insert into register values(?,?,?)");
   pt.setString(1, Username);
   pt.setString(2, Email);
   
   pt.setString(3, Password);
   int i=0;
i=pt.executeUpdate();
 if(i!=0){System.out.println("insertion successful");
 session.setAttribute("ha",Username);
response.sendRedirect("login.jsp");

 }
 else{System.out.println("not");
 session.setAttribute("ha",null);
 response.sendRedirect("login.jsp");

 
 }
	   
	
   
   
     
	}
    catch(Exception e){System.out.println(e);}

	
}
}