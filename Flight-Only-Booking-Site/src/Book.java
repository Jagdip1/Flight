

import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Book
 */
@WebServlet("/Book")
public class Book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from=request.getParameter("from");
		String destination=request.getParameter("destination");
		String date=request.getParameter("date");
		PrintWriter out = response.getWriter();
		System.out.println(from);
		System.out.println(date);
		System.out.println(destination);
		HttpSession session=request.getSession(true);
		Connection c =null;
		Statement s=null;
		
	String aname=null,afrom=null,adestination=null,adate=null,aarival=null,adeparture=null,aprice=null,acompany=null;	
		try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		c=DriverManager.getConnection("jdbc:mysql://localhost:3306/jagdip","root","");
		if(c!=null){
			System.out.println("connection established");
			s=c.createStatement();
			ResultSet r=s.executeQuery("select * from flight where sfrom = '"+from+"' and destination='"+destination+"' and sdate='"+date+"'");
			while(r.next()){
				
				aname=r.getString(1);
				afrom=r.getString(2);
				adestination=r.getString(3);
				adate=r.getString(4);
				aarival=r.getString(5);
				adeparture=r.getString(6);
				aprice=r.getString(7);
				acompany=r.getString(8);
			}
			System.out.println(aname);
			System.out.println(afrom);
			System.out.println(adestination);
			System.out.println(adate);
			System.out.println(aarival);
			System.out.println(adeparture);
			System.out.println(aprice);
			System.out.println(acompany);
			
			session.setAttribute("name", aname);
			session.setAttribute("from", afrom);
			session.setAttribute("destination", adestination);
			session.setAttribute("date",adate );
			session.setAttribute("arrival", aarival);
			session.setAttribute("departure", adeparture);
			session.setAttribute("company", acompany);
			session.setAttribute("price", aprice);
			if(aname!=null){
				response.sendRedirect("Book.jsp");
				
			}
			else{
				session.setAttribute("name", "not");
				response.sendRedirect("Book.jsp");
			}
			c.close();
			
			
		}
		else{System.out.println("cannot established");}
		
		
		}
		
		catch(Exception e){
			System.out.println(e);
		}
		

	}
}