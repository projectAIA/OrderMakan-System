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
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name = request.getParameter("user");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String password = request.getParameter("password");
			String sql = ("Insert into cashier (Username, firstName, lastName, Password) values(?,?,?,?)");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cashierdata", "root", "");
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, firstName);
			ps.setString(3, lastName);
			ps.setString(4, password);
			ps.executeUpdate(); // to accept all inserted data
			PrintWriter out = response.getWriter();
			out.println("<html><h4 style=\"color:lightpurple;\">You have successfully registered, Enjoy your shift!</html>");
			response.sendRedirect("loginCashier.jsp");
			
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
