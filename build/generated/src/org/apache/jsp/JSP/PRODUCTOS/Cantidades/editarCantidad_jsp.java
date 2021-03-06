package org.apache.jsp.JSP.PRODUCTOS.Cantidades;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Cantidad;
import Control.AccionesCantidad;

public final class editarCantidad_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Editar</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../../CSS/Estilos/EditarGeneral.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"POST\" action=\"../../../actualizarCantidad\" name=\"ActualizarCantidad\" id=\"formulario2\" class=\"formulario__register\">\n");
      out.write("            <h2>Actualizar</h2>\n");
      out.write("            ");

                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Cantidad e = AccionesCantidad.buscarCantidadById(id);
                
                    
      out.write("\n");
      out.write("\n");
      out.write("            <canvas id='world'></canvas>      \n");
      out.write("\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__id2\">\n");
      out.write("                <label for=\"valor\" class=\"formulario__label\"></label>\n");
      out.write("                <div class=\"formulario__grupo-input\">                    \n");
      out.write("                        <input type=\"hidden\" name=\"id2\" value=\"");
      out.print(e.getId_cantidad());
      out.write("\"  placeholder=\"ID\"    >\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa??unicamente valores numericos.</p>\n");
      out.write("            </div>                \n");
      out.write("\n");
      out.write("            <!-- Grupo: Usuario -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__valor2\">\n");
      out.write("                <label for=\"valor\" class=\"formulario__label\">Valor</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"valor2\" id=\"valor2\" value=\"");
      out.print(e.getValor_cantidad());
      out.write("\" placeholder=\"Ingresa el valor\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa??unicamente valores numericos.</p>\n");
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            <!-- Grupo: Usuario -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__unidad2\">\n");
      out.write("                <label for=\"unidad\" class=\"formulario__label\">Unidad</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"unidad2\" id=\"unidad2\" value=\"");
      out.print(e.getUnidad_cantidad());
      out.write("\" placeholder=\"Ingresa la unidad\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa algo valido entre 1 y 5 caracteres.</p>\n");
      out.write("            </div>    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("     <div class=\"formulario__mensaje\" id=\"formulario__mensaje\">\n");
      out.write("                        <p><i class=\"fas fa-exclamation-triangle\"></i> <b>Error:</b>Llena el formulario correctamente. </p>\n");
      out.write("                    </div>                    \n");
      out.write("                    \n");
      out.write("                    <button type=\"submit\"  class=\"btn btn-primary btn-block btn-large\"   id=\"Actualizar\">Actualizar</button>\n");
      out.write("                    <p class=\"formulario__mensaje-exito\" id=\"formulario__mensaje-exito\">Formulario enviado exitosamente!</p>\n");
      out.write("\n");
      out.write("        </form> \n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("        <script src=\"../../../JS/EditarGeneral.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
