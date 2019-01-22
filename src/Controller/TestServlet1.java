package Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String langue = request.getParameter( "lang" );
        String prix = request.getParameter( "price" );
        String message="Transmission de variables : OK !";
        request.setAttribute("test",message);
        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
}
