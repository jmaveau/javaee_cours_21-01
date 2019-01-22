package Controller;

import com.beans.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.ArrayList;

public class TestServlet1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter( "desc" );
        String prix = request.getParameter( "price" );
        String name = request.getParameter("name");

        Produit my1stProduct = new Produit(name,description, Float.valueOf(prix),1);
        Produit my2ndProduct = new Produit("Mini_Usb_cable", "Brancher des clef", 15.5f,1);
        Produit my3ndProduct = new Produit("Micro_Usb_cable", "Brancher des clef", 25.5f,1);
        Produit my4ndProduct = new Produit("UsbC_cable", "Brancher des clef", 20.5f,1);
        ArrayList<Produit> lProduits = new ArrayList<Produit>();
        lProduits.add(my1stProduct);
        lProduits.add(my2ndProduct);
        lProduits.add(my3ndProduct);
        lProduits.add(my4ndProduct);

        request.setAttribute("Liste_Produits", lProduits);
        this.getServletContext().getRequestDispatcher("/WEB-INF/test2.jsp").forward(request, response);
    }
}
