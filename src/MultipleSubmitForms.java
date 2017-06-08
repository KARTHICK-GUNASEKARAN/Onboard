

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MultipleSubmitForms
 */
@WebServlet("/MultipleSubmitForms")
public class MultipleSubmitForms extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException   
	  {
	    res.setContentType( "text/html" ) ;
	    ServletOutputStream sos = res.getOutputStream(); 	 
		String projectname = req.getParameter("projectname");
        String descr = req.getParameter("descr");
        String appno = req.getParameter("appno");
        String Startdate = req.getParameter("Startdate");
        String Intdate = req.getParameter("Intdate");
        String Plandate = req.getParameter("Plandate");
        String Execdate = req.getParameter("Execdate");
        String Hyperdate = req.getParameter("Hyperdate");
        String Enddate = req.getParameter("Enddate"); 
        String pid =req.getParameter("projectid");
		
		String appname = req.getParameter("appname");
	  				                
	    String str1 = req.getParameter("a1");       
	    String str2 = req.getParameter("p1");     
	  
	    sos.println("<h3>");
	 
	    if(str1 != null)                            
	    {    
	        
	        // get response writer
	        PrintWriter writer = res.getWriter();
	         
	        // build HTML code
	        String htmlRespone = "<html>";
	        htmlRespone += "<h2>Your Order Has been Taken</h2>";  
	        htmlRespone += "</html>";
	        writer.println(htmlRespone);
	        try
	        {
	          // create a mysql database connection
	          String myDriver = "org.gjt.mm.mysql.Driver";
	          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
	          Class.forName(myDriver);
	          Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	        
	         
	          // the mysql insert statement
	          String query = " insert into projinfo (projectname, descr,appno,Startdate,Intdate,Plandate,Execdate,Hyperdate,Enddate)"
	            + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

	          // create the mysql insert preparedstatement
	          //Scanner sin=new Scanner(System.in);
	          //String id,food,extra;
	          //System.out.println("Enter Your id");
	          //id=sin.next();
	          //System.out.println("Please tell what food you want");
	          //food=sin.next();
	          //System.out.println("would you like to have extra food today say y or n");
	          //extra=sin.next();
	          PreparedStatement preparedStmt = conn.prepareStatement(query);
	          preparedStmt.setString (1, projectname);
	          preparedStmt.setString   (2, descr);
	          preparedStmt.setString (3, appno);
	          preparedStmt.setString   (4, Startdate);
	          preparedStmt.setString (5, Intdate);
	          preparedStmt.setString   (6, Plandate);
	          preparedStmt.setString (7, Execdate);
	          preparedStmt.setString   (8, Hyperdate);
	          preparedStmt.setString (9, Enddate);
	      
	          
	          		          
	          
	          

	          // execute the preparedstatement
	          preparedStmt.execute();
	          
	          conn.close();
	        }
	        catch (Exception e)
	        {
	        	 
	          System.err.println("Got an exception!");
	          System.err.println(e.getMessage());
	        }
	        // return response
	        res.sendRedirect("project.jsp");
			


	    }			                         
	    else if(str2 != null)                       
	    { 
	   
	    	  // get response writer
	        PrintWriter writer = res.getWriter();
	         
	        // build HTML code
	    
	        
	        try
	        {
	          // create a mysql database connection
	          String myDriver = "org.gjt.mm.mysql.Driver";
	          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
	          Class.forName(myDriver);
	          Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	        
	         
	          // the mysql insert statement
	          String query = " insert into appinfo (pid,appname)"
	            + " values (? ,?)";

	          // create the mysql insert preparedstatement
	          //Scanner sin=new Scanner(System.in);
	          //String id,food,extra;
	          //System.out.println("Enter Your id");
	          //id=sin.next();
	          //System.out.println("Please tell what food you want");
	          //food=sin.next();
	          //System.out.println("would you like to have extra food today say y or n");
	          //extra=sin.next();
	          PreparedStatement preparedStmt = conn.prepareStatement(query);
	          preparedStmt.setString (1, pid);
	          preparedStmt.setString (2, appname);
	         
	          

	          // execute the preparedstatement
	          preparedStmt.execute();
	         
	          conn.close();
	         
	        }
	        catch (Exception e)
	        {
	        	
	          System.err.println("Got an exception!");
	          System.err.println(e.getMessage());
	        }
	        // return response
	      
	        res.sendRedirect("editproject.jsp"); 
	  
	    
	    }
	    
	    sos.println("</h3>");
	    sos.close( );
	  }        

}
