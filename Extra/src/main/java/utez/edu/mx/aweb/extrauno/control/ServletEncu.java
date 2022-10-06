package utez.edu.mx.aweb.extrauno.control;

import utez.edu.mx.aweb.extrauno.modelo.BeanDatos;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletEncu", urlPatterns = {
        "/save-encuesta",
        "/save-persona",
        "/get-encuesta",
        "/get-encuestado",
        "/encuesta",
        "/inicio",
        "/consultarEncuesta", //get
        "/update-persona"
})
public class ServletEncu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServiceEncuesta serviceEncuesta;
        String option = request.getServletPath();
        switch (option) {
            case "/get-encuesta":
                request.getRequestDispatcher("WEB-INF/view/encuesta.jsp").forward(request, response);
                break;
            case "/get-encuestado":
                break;
            case "/consultarEncuesta":
                String encuestaString = request.getParameter("encuesta1") != null? request.getParameter("encuesta1") : "";
                int encuesta1 = Integer.parseInt(encuestaString);
                try {

                }catch (Exception e){
                    response.sendRedirect("get-encuesta");
                }
                break;
            default:
                response.sendRedirect("encuesta");
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        switch (option) {
            case "/save-persona":
                try {
                    String encuestaString = request.getParameter("encuesta") != null? request.getParameter("encuesta"):"";
                    String nombreString = request.getParameter("nombre") != null? request.getParameter("nombre"):"";
                    String escuelaString = request.getParameter("encuelas") != null? request.getParameter("encuelas"):"";
                    ServiceEncuesta serviceEncuesta = new ServiceEncuesta();
                    int idencuesta = Integer.parseInt(encuestaString);
                    BeanDatos beanDatos = new BeanDatos();
                    beanDatos.setEncuesta(idencuesta);
                    beanDatos.setNombre(nombreString);
                    beanDatos.setEscuela(escuelaString);
                    boolean result = serviceEncuesta.savePersona(beanDatos);
                    response.sendRedirect("get-encuesta?result-save="+(result?"ok":"error"));
                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("index.jsp");
                }
                break;
            case "/update-persona":

                break;
            default:
                response.sendRedirect("get-encuesta");
                break;
        }
    }
}
