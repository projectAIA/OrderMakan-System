//     GROUP: AIA
//     INFO 3305 SECTION 2
//     NUR IZZATI MAULAD ABDUL RAHIM 1812274
//     NURUL AIN SHAHIRAH BINTI NORFRIZAT 1818540
//     NUR AFIFAH BINTI MOHAMAD AZAHAR 1810016 

package ProjectAIA;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Login() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		try {
			String name = request.getParameter("user");
			String password = request.getParameter("password");
			String dbUsername = null;
			String dbPassword = null;
			String sql = ("Select * from cashier where Username=? and Password=?"); //we used 'and' as to make sure it is aligned with each other
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cashierdata", "root", "");
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name); //parameter=1 
			ps.setString(2, password); //parameter=2
			ResultSet rs = ps.executeQuery(); //we used executeQuery to fetch all the data
			PrintWriter out = response.getWriter();
			
				while(rs.next()) {
					dbUsername = rs.getString("Username");
					dbPassword = rs.getString("Password"); //can do both either number or name of columns
				}
				//name.equals(dbUsername) &&
				if(password.equals(dbPassword)) {
					HttpSession session=request.getSession();  
			        session.setAttribute("Username",name);  
			        response.sendRedirect("OrderMenu.jsp");
				}
				
				else {
					out.println("<html><h4 style=\"color:Red;\">*Sorry, wrong username or password. Please try again!<h4></body></html>");
					out.println(""); 
					RequestDispatcher rd = request.getRequestDispatcher("loginCashier.jsp");
					rd.include(request, response);
				}
				
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
