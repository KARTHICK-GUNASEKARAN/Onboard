

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class business
 */
@WebServlet("/business")
public class business extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public business() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String amd_btn_flg = request.getParameter("amd_btn_flg");
		        String BA_add_flg = request.getParameter("BA_add_flg");
		        String override_rs = request.getParameter("override_rs");
		        String data_retained_crs = request.getParameter("data_retained_crs");
		        String remain_enc = request.getParameter("remain_enc");
		        String data_loc_law = request.getParameter("data_loc_law");
		        String secure_zone = request.getParameter("secure_zone");
		        String data_masking = request.getParameter("data_masking");
		        String relationship_blob = request.getParameter("relationship_blob");
		        String reconstruct_data = request.getParameter("reconstruct_data");
		        String blob_original_format = request.getParameter("blob_original_format");
		       
		        String maintain_formats = request.getParameter("maintain_formats");
		        String maintain_fieldtypes = request.getParameter("maintain_fieldtypes");
		        String one_search = request.getParameter("one_search");
		        String archive_spl = request.getParameter("archive_spl");
		        String archive_foreign = request.getParameter("archive_foreign");
		       
		        String maintain_relationship = request.getParameter("maintain_relationship");
		        String maintain_clob = request.getParameter("maintain_clob");
		        String archive_unstruct_format = request.getParameter("archive_unstruct_format");
		        String rolebased_archive = request.getParameter("rolebased_archive");
		        String data_access_bi = request.getParameter("data_access_bi");
		      
		        String md_maintain_relationship = request.getParameter("md_maintain_relationship");
		        String allow_config = request.getParameter("allow_config");
		       
		        String error_handling = request.getParameter("error_handling");
		        String md_archd_relationship = request.getParameter("md_archd_relationship");
		        String metadata_mgmt = request.getParameter("metadata_mgmt");
		        String search_tools = request.getParameter("search_tools");
		        String data_export = request.getParameter("data_export");
		        String config_views = request.getParameter("config_views");
		         
		        
		        // do some processing here...
		         
		        // get response writer
		        PrintWriter writer = response.getWriter();
		         
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
		          String query = " insert into app_info (amd_btn_flg, ref_to_app, app_desc, app_vendor, contract_exp_date, notice_period, contract_value, business_units, txn_module, readonly_date, db_size, loc_data, site_location_data, prod_instance, loc_prod_instance, info_sec_classification, app_migrated_flg, target_app_name, date_migration, archive_reqd_flg, reason_archive_no, gen_comment)"
		            + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
		          preparedStmt.setString (1, amd_btn_flg);
		          preparedStmt.setString   (2, ref_to_app);
		          preparedStmt.setString (3, app_desc);
		          preparedStmt.setString(4, app_vendor);
		          preparedStmt.setString(5, contract_exp_date);
		          preparedStmt.setString (6, notice_period);
		          preparedStmt.setString   (7, contract_value);
		          preparedStmt.setString (8, business_units);
		          preparedStmt.setString(9, txn_module);
		          preparedStmt.setString(10, readonly_date);
		          preparedStmt.setString (11, db_size);
		          preparedStmt.setString   (12, loc_data);
		          preparedStmt.setString (13, site_location_data);
		          preparedStmt.setString(14, prod_instance);
		          preparedStmt.setString(15, loc_prod_instance);
		          preparedStmt.setString (16, info_sec_classification);
		          preparedStmt.setString   (17, app_migrated_flg);
		          preparedStmt.setString (18, target_app_name);
		          preparedStmt.setDate(19, java.sql.Date.valueOf(date_migration));
		          preparedStmt.setString(20, archive_reqd_flg);
		          preparedStmt.setString (21, reason_archive_no);
		          preparedStmt.setString   (22, gen_comment);
		          preparedStmt.setString (23, reason_archive_no);
		          preparedStmt.setString   (24, gen_comment);
		          preparedStmt.setString (25, reason_archive_no);
		          preparedStmt.setString   (26, gen_comment);
		          preparedStmt.setString (27, reason_archive_no);
		          preparedStmt.setString   (28, gen_comment);
		          preparedStmt.setString (29, reason_archive_no);
		          preparedStmt.setString   (30, config_views);
		          
		          
		          

		          // execute the preparedstatement
		          preparedStmt.execute();
		          
		          conn.close();
		        }
		        catch (Exception e)
		        {
		        	 System.out.println("Sorry Your order for today has been already taken");
		          System.err.println("Got an exception!");
		          System.err.println(e.getMessage());
		        }
		        // return response
		        response.sendRedirect("business.jsp");
				
	}

}
