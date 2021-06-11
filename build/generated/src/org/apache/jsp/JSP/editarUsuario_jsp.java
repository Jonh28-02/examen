package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.Usuario;
import Control.AccionesUsuario;

public final class editarUsuario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Actualizar Usuario</h1>\n");
      out.write("        \n");
      out.write("        <form method=\"POST\" action=\"actualizarUsuario\" name=\"ActualizarUsuario\" id=\"formulario2\" class=\"formulario__register\">\n");
      out.write("            <h2>Registrarse</h2>\n");
      out.write("            ");

                
                            int id = Integer.parseInt(request.getParameter("id"));                            
                            Usuario e = AccionesUsuario.buscarUsuarioById(id);
                
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <input type=\"hidden\" name=\"id2\" value=\"");
 e.getId(); 
      out.write("\">\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            <!-- Grupo: Usuario -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__usuario\">\n");
      out.write("                <label for=\"usuario\" class=\"formulario__label\">Usuario</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"usuario2\" id=\"usuario2\" value=\"");
      out.print(e.getUsuario());
      out.write("\" placeholder=\"Ingresa tu Usuario\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">El usuario tiene que ser de 4 a 16 dígitos y solo puede contener numeros, letras y guion bajo.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Grupo: Nombre -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__nombre\">\n");
      out.write("                <label for=\"nombre\" class=\"formulario__label\">Nombre</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"nombre2\" id=\"nombre2\" value=\"");
      out.print(e.getNombre());
      out.write("\" placeholder=\"Ingresa tu Nombre\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa un nombre valido.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Grupo: Apellidos -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__appe\">\n");
      out.write("                <label for=\"appe\" class=\"formulario__label\">Apellidos</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"appe2\" id=\"appe2\" value=\"");
      out.print(e.getAppe());
      out.write("\" placeholder=\"Ingresa tus Apellidos\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Solo se aceptan letras.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Grupo: Contraseña -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__password\">\n");
      out.write("                <label for=\"password\" class=\"formulario__label\">Contraseña</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"password\" class=\"formulario__input\" name=\"password2\" id=\"password2\"   value=\"");
      out.print(e.getPassword());
      out.write("\" placeholder=\"Ingresa Contraseña\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">La contraseña tiene que ser de 4 a 12 dígitos.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Grupo: Domicilio -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__dom\">\n");
      out.write("                <label for=\"dom\" class=\"formulario__label\">Domicilio</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"dom2\" id=\"dom2\" value=\"");
      out.print(e.getDireccion());
      out.write("\"   placeholder=\"Domicilio\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Solo puede ingresar letras, puntos y numeros.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Grupo: Edad -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__edad\">\n");
      out.write("                <label for=\"edad\" class=\"formulario__label\">Edad</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"hidden\" class=\"formulario__input\" name=\"edad2\" id=\"edad2\" value=\"");
      out.print(e.getEdad() );
      out.write("\" placeholder=\"Edad\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa una edad valida.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Grupo: Teléfono -->\n");
      out.write("            <div class=\"formulario__grupo\" id=\"grupo__telefono\">\n");
      out.write("                <label for=\"telefono\" class=\"formulario__label\">Telefono</label>\n");
      out.write("                <div class=\"formulario__grupo-input\">\n");
      out.write("                    <input type=\"text\" class=\"formulario__input\" name=\"telefono2\" id=\"telefono2\"  value=\"");
      out.print(e.getTelefono());
      out.write("\" placeholder=\"Telefono\">\n");
      out.write("                    <i class=\"formulario__validacion-estado fas fa-times-circle\"></i>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"formulario__input-error\">Ingresa un telefono valido.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"formulario__mensaje\" id=\"formulario__mensaje\">\n");
      out.write("                <p><i class=\"fas fa-exclamation-triangle\"></i> <b>Error:</b>Rellena el formulario correctamente. </p>\n");
      out.write("            </div>\n");
      out.write("                    \n");
      out.write("            <button type=\"submit\" id=\"Actualizar\">Actualizar</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!--ACABA EL CONTENEDOR DEL REGISTRO-->\n");
      out.write("                        </form>        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
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
