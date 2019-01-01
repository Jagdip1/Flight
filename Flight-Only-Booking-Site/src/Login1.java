

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;




@WebServlet("/Login1")
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username=request.getParameter("Username");
		String Password=request.getParameter("Password");
		boolean status=false;
	System.out.println(Username+","+Password);
	PrintWriter out=response.getWriter();
	HttpSession session=request.getSession(true);
    Connection c=null;
    Statement st=null;
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
     c =DriverManager.getConnection("jdbc:mysql://localhost:3306/jagdip?userSSL=false","root","");
    if(c!=null){System.out.println("connection established");}
    else{System.out.println("not established");}
   st=c.createStatement();
   ResultSet r=st.executeQuery("select * from register where username='"+Username+"' and spassword='"+Password+"' ");
   status=r.next();
  if(status==true){
	 
	  System.out.println("logged in ");
	  System.out.println(Username);
	  session.setAttribute("send", Username);

	  response.sendRedirect("login.jsp");
	
		
  }
  else{
	  
	  System.out.println("invalid details");
      session.setAttribute("send","invalid credentials");
      response.sendRedirect("login.jsp");

	
	}c.close();}
    catch(Exception e){System.out.println(e);}

	}

}
