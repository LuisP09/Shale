/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author luisa
 */
@WebServlet(name = "CanjeServlet", urlPatterns = {"/CanjeServlet"})
public class CanjeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CanjeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CanjeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id_premios = request.getParameter("id");
        String btV = request.getParameter("btV");
        
        ArrayList<RegistroPre> regis;
        GestionRegistroP gestion=new GestionRegistroP();

         if (btV.equals("Ver")) {
            regis = gestion.busqueda(id_premios);
            request.setAttribute("regis", regis);
            request.getRequestDispatcher("paginas/canje_premio.jsp").forward(request, response);
        }else if (btV.equals("ver")) {
            regis = gestion.busqueda(id_premios);
            request.setAttribute("regis", regis);
            request.getRequestDispatcher("paginasad/canje_premio.jsp").forward(request, response);
        }//ver
        /*
        RegistroPre regis = new RegistroPre(id_premios, nombre_premio, coste_puntos, descripcion, imagen, id_puntos);
        PrintWriter out = response.getWriter();
        out.print(btV);
        if (btV.equals("ver")) {
            regis = gestionRP.mostrarDatos(id_premios);
            request.setAttribute("registro", regis);
            request.getRequestDispatcher("paginas/mostrar_premios.jsp").forward(request, response);
        }//ver

        /*if (btV.equals("Ver")) {
            regis = gestionRP.mostrarDatos(id_premios);
            request.setAttribute("regis", regis);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }//ver*/
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
