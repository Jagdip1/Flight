import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Book2
 */
@WebServlet("/Book2")
public class Book2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flightid=request.getParameter("flightid");
		int ticket=Integer.parseInt(request.getParameter("tickets"));
		int ticketa=0;
		HttpSession session1 =request.getSession(true);
		Connection c=null;
		System.out.println("ticket is :"+ticket);
		System.out.println("flight id is "+flightid);
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			c=DriverManager.getConnection("jdbc:mysql://localhost:3306/jagdip","root","");
			if(c!=null){
				System.out.println("connection established");
				Statement s = c.createStatement();
				ResultSet r= s.executeQuery("select tickets from flight where flightid='"+flightid+"'");
			 while(r.next()){
		    ticketa=r.getInt(1);
		}
			 
			 
			 
			 System.out.println(ticketa);
		 if(ticketa>ticket){
				 
				 ticketa=ticketa-ticket;
				 System.out.println("after subratiction : "+ticketa );
				 PreparedStatement p=c.prepareStatement("update flight set tickets=?  where flightid='"+flightid+"'");
				 p.setInt(1, ticketa);
				 int i=0;
				i=p.executeUpdate();
				  if(i!=0){
					System.out.println("updation succesfuull");	
					session1.setAttribute("booked", "booked");
					response.sendRedirect("Book1.jsp");
					
			        }
				else{System.out.println("updation not succesfuull");
				     }
			
			}
		   if(ticketa<=ticket){
			session1.setAttribute("booked", "notbook");		
					System.out.println("don't have enought tickets");
					response.sendRedirect("Book1.jsp");
				}
				
			 
	c.close();		
			
			
			}
			else{
				
				System.out.println("connection not established");
				
			}
		}
		catch(Exception e){
			
			System.out.println(e);
		}
	}


}
