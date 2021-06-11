package org.apache.jsp.Paginas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Presentacion;
import Control.AccionesPresentacion;
import Modelo.Tamano;
import Control.AccionesTamano;
import Modelo.Cantidad;
import Control.AccionesCantidad;
import Modelo.Promociones;
import Control.AccionesPromociones;
import Control.AccionesSabor;
import Modelo.Sabor;
import java.util.List;

public final class agregarProducto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Guardar Producto</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../CSS/Estilos/agregarProducto.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <form  method=\"POST\" action=\"../guardarproducto\">\r\n");
      out.write("            <h1>Agregar Producto</h1>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"select\">\r\n");
      out.write("                <select id=\"sabor\"  name = \"sabor\">\r\n");
      out.write("                    <option selected disabled >Escoge un sabor</option>\r\n");
      out.write("                            ");

                                  
                            List<Sabor> lista=AccionesSabor.getAllSabores();
                            for(Sabor e: lista){
                                
      out.write("\r\n");
      out.write("                                    <option name=\"sabor\">");
      out.print(e.getId_sabor());
      out.write("</option>\r\n");
      out.write("                                    \r\n");
      out.write("                             ");

                            }
                                       
                                    
                             
      out.write("\r\n");
      out.write("                             \r\n");
      out.write("                             </select>\r\n");
      out.write("                             </div>\r\n");
      out.write("                             \r\n");
      out.write("            <div class=\"select\">\r\n");
      out.write("                <select  id=\"promocion\" name=\"promocion\">\r\n");
      out.write("                    <option selected disabled>Escoge una promocion</option>\r\n");
      out.write("                             ");

                            List<Promociones> lista2=AccionesPromociones.getAllPromociones();
                            for(Promociones e: lista2){
                      
      out.write("\r\n");
      out.write("                      <option>");
      out.print(e.getTipo_promocion());
      out.write("</option>\r\n");
      out.write("                       ");

                            }
                             
      out.write("\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>    \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                 <div class=\"select\">\r\n");
      out.write("                <select id=\"cantidad\" name=\"cantidad\">\r\n");
      out.write("                    <option selected disabled>Escoge la cantidad</option>\r\n");
      out.write("                            ");

                            List<Cantidad> lista3=AccionesCantidad.getAllCantidades();
                            for(Cantidad e: lista3){
                      
      out.write("\r\n");
      out.write("                      <option>");
      out.print(e.getUnidad_cantidad());
      out.write("</option>\r\n");
      out.write("                       ");

                            }
                      
      out.write("\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("                \r\n");
      out.write("                 <div class=\"select\">\r\n");
      out.write("                <select id=\"tamano\" name=\"tamano\">\r\n");
      out.write("                    <option selected disabled>Escoge el tamaño</option>\r\n");
      out.write("                            ");

                                    List<Tamano> lista4=AccionesTamano.getAllTamanos();
                                    for(Tamano e: lista4){
                              
      out.write("\r\n");
      out.write("                              <option>");
      out.print(e.getNombre_tamano());
      out.write("</option>\r\n");
      out.write("                              ");

                                    }
                              
      out.write("\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("                \r\n");
      out.write("                 <div class=\"select\">\r\n");
      out.write("                <select id=\"presentacion\" name=\"presentacion\">\r\n");
      out.write("                    <option selected disabled>Escoge la presentacion</option>\r\n");
      out.write("                             ");

                                    List<Presentacion> lista5=AccionesPresentacion.getAllPresentaciones();
                                    for(Presentacion e: lista5){
                              
      out.write("\r\n");
      out.write("                                <option>");
      out.print(e.getTipo_presentacion());
      out.write("</option>\r\n");
      out.write("                               ");

                                    }
                              
      out.write("\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>                  \r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                 <div class=\"input\">\r\n");
      out.write("                    <input type=\"text\" name=\"cantidad\" required class=\"search-box\"  id=\"cantidad\" placeholder=\"Ingresa el precio\"/>\r\n");
      out.write("            </div>                  \r\n");
      out.write("                \r\n");
      out.write("            <button type=\"submit\" id=\"registrar\">Registrar</button>        \r\n");
      out.write("                               \r\n");
      out.write("            </form>\r\n");
      out.write("                               \r\n");
      out.write("                                  \r\n");
      out.write("   \r\n");
      out.write("                    \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
