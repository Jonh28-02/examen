/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Control.AccionesProducto;
import Modelo.Productos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author river
 */
public class guardarproducto extends HttpServlet {

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
            String sabor=request.getParameter("sabor"); 
            String promocion=request.getParameter("promocion");
            String idcantidad=request.getParameter("cantidad");
            String valor=request.getParameter("valor");
            String idtamaño=request.getParameter("tamano");
            String idpresentacion=request.getParameter("presentacion");
            String precio=request.getParameter("precio");
            String stock=request.getParameter("stock");
            
            Productos e = new Productos();
            
            e.setSabor(sabor);
            e.setPresentacion(idpresentacion);
            e.setPromocion(promocion);
            e.setTamano(idtamaño);
            e.setCantidad(idcantidad);
            e.setValor(valor);
            e.setPrecio(precio);
            e.setStock(stock);
            
            int estatus= AccionesProducto.registrarProducto(e);
            if(estatus>0){
                response.sendRedirect("JSP/mensajeExito.jsp");
            }
            else{
                response.sendRedirect("JSP/error.jsp");
            }
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
        processRequest(request, response);
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
