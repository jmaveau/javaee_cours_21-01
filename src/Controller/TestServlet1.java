package Controller;

import com.beans.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter( "desc" );
        String prix = request.getParameter( "price" );
        String name = request.getParameter("name");

        com.beans.Produit myProduct = new Produit();
        myProduct.setPrix_achat(Float.valueOf(prix));
        myProduct.setDescription(description);
        myProduct.setNom(name);
        request.setAttribute("Produit", myProduct);
        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
}
