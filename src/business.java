

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
		        String completeness = request.getParameter("completeness");
		        String error_handling = request.getParameter("error_handling");
		        String md_archd_relationship = request.getParameter("md_archd_relationship");
		        String metadata_mgmt = request.getParameter("metadata_mgmt");
		        String search_tools = request.getParameter("search_tools");
		        String data_export = request.getParameter("data_export");
		        String config_views = request.getParameter("config_views");
		         
		        
		        // do some processing here...
		         
		        // get response writer
		        
		        try
		        {
		          // create a mysql database connection
		          String myDriver = "org.gjt.mm.mysql.Driver";
		          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
		          Class.forName(myDriver);
		          Connection conn = DriverManager.getConnection(myUrl, "root", "root");																																																								          
		          // the mysql insert statement
		          String query = " insert into business (amd_btn_flg, BA_add_flg, override_rs, data_retained_crs, remain_enc, data_loc_law, secure_zone, data_masking, relationship_blob, reconstruct_data, blob_original_format, maintain_formats, maintain_fieldtypes, one_search, archive_spl, archive_foreign, maintain_relationship, maintain_clob, archive_unstruct_format, rolebased_archive, data_access_bi, md_maintain_relationship, allow_config, completeness, error_handling, md_archd_relationship, metadata_mgmt, search_tools, data_export, config_views)"
		            + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		          
		          PreparedStatement preparedStmt = conn.prepareStatement(query);
		          preparedStmt.setString (1, amd_btn_flg);
		          preparedStmt.setString   (2, BA_add_flg);
		          preparedStmt.setString (3, override_rs);
		          preparedStmt.setString(4, data_retained_crs);
		          preparedStmt.setString(5, remain_enc);
		          preparedStmt.setString (6, data_loc_law);
		          preparedStmt.setString   (7, secure_zone);
		          preparedStmt.setString (8, data_masking);
		          preparedStmt.setString(9, relationship_blob);
		          preparedStmt.setString(10, reconstruct_data);
		          preparedStmt.setString (11, blob_original_format);
		          preparedStmt.setString   (12, maintain_formats);
		          preparedStmt.setString (13, maintain_fieldtypes);
		          preparedStmt.setString(14, one_search);
		          preparedStmt.setString(15, archive_spl);
		          preparedStmt.setString (16, archive_foreign);
		          preparedStmt.setString   (17, maintain_relationship);
		          preparedStmt.setString (18, maintain_clob);
		          preparedStmt.setString (19, archive_unstruct_format);
		          preparedStmt.setString(20,  rolebased_archive);
		          preparedStmt.setString (21, data_access_bi);
		          preparedStmt.setString   (22, md_maintain_relationship);
		          preparedStmt.setString (23, allow_config);
		          preparedStmt.setString   (24, completeness);
		          preparedStmt.setString (25, error_handling);
		          preparedStmt.setString   (26, md_archd_relationship);
		          preparedStmt.setString (27, metadata_mgmt);
		          preparedStmt.setString   (28, search_tools);
		          preparedStmt.setString (29, data_export);
		          preparedStmt.setString   (30, config_views);
		          
		          
		          

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
		        response.sendRedirect("business.jsp");
				
	}

}
