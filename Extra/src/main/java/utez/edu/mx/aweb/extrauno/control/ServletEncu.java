package utez.edu.mx.aweb.extrauno.control;

import utez.edu.mx.aweb.extrauno.modelo.BeanDatos;
import utez.edu.mx.aweb.extrauno.modelo.BeanEncuesta;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

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
        HttpSession session= request.getSession();
        ServiceEncuesta serviceEncuesta= new ServiceEncuesta();
        String option = request.getServletPath();
        switch (option) {
            case "/save-persona":
                try {
                    String id= request.getParameter("encuesta")!=null? request.getParameter("encuesta"):"";
                    String nombreString = request.getParameter("nombre") != null? request.getParameter("nombre"):"";
                    String escuelaString = request.getParameter("encuelas") != null? request.getParameter("encuelas"):"";
                    session.setAttribute("idEnc",id);
                    session.setAttribute("namePerson",nombreString);
                    request.getRequestDispatcher("WEB-INF/view/encuesta.jsp").forward(request, response);session.setAttribute("escuela",escuelaString);
                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("index.jsp");
                }
                break;
            case "/inicio":
                List<BeanEncuesta>listEncuesta =serviceEncuesta.listEncuesta();
                request.setAttribute("list",listEncuesta);
                request.getRequestDispatcher("index.jsp").forward(request,response);
                break;
            case "/get-encuesta":
                int idE=Integer.parseInt(request.getParameter("encuesta1")!=null?request.getParameter("encuesta1"):"0");
                BeanEncuesta encuesta= serviceEncuesta.getEncuesta(idE);
                double porcentaje=encuesta.getPorcentaje()/(40*encuesta.getCantidad())*100;
                encuesta.setPorcentaje(porcentaje);
                request.setAttribute("encuesta",encuesta);
                request.getRequestDispatcher("WEB-INF/view/resultados.jsp").forward(request, response);
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
        HttpSession session=request.getSession();
        String option = request.getServletPath();
        ServiceEncuesta serviceEncuesta= new ServiceEncuesta();
        switch (option) {
            case "/save-encuesta":
                boolean result=false;
                BeanDatos datos= new BeanDatos();
                BeanEncuesta encuesta= new BeanEncuesta();
                try{
                    int func=Integer.parseInt( request.getParameter("funcionabilidad")!=null?request.getParameter("funcionabilidad"):"0");
                    int conf= Integer.parseInt( request.getParameter("confiabilidad")!=null?request.getParameter("confiabilidad"):"0");
                    int usa=Integer.parseInt( request.getParameter("usabilidad")!=null?request.getParameter("usabilidad"):"0");
                    int ren= Integer.parseInt( request.getParameter("rendimiento")!=null?request.getParameter("rendimiento"):"0");
                    int mant=Integer.parseInt( request.getParameter("mantenimiento")!=null?request.getParameter("mantenimiento"):"0");
                    int port= Integer.parseInt( request.getParameter("portabilidad")!=null?request.getParameter("portabilidad"):"0");
                    int seg=Integer.parseInt( request.getParameter("seguridad")!=null?request.getParameter("seguridad"):"");
                    int comp= Integer.parseInt( request.getParameter("compartibilidad")!=null?request.getParameter("compartibilidad"):"0");
                    datos.setId(Integer.parseInt(String.valueOf(session.getAttribute("idEnc"))));
                    datos.setEscuela(String.valueOf(session.getAttribute("escuela")));
                    datos.setNombre(String.valueOf(session.getAttribute("namePerson")));
                    datos.setEncuesta1(func);
                    datos.setEncuesta2(conf);
                    datos.setEncuesta3(usa);
                    datos.setEncuesta4(ren);
                    datos.setEncuesta5(mant);
                    datos.setEncuesta6(port);
                    datos.setEncuesta7(seg);
                    datos.setEncuesta8(comp);
                    datos.setTotal(func+conf+usa+ren+mant+port+seg+comp);
                    result=true;
                }catch (Exception e){
                    result=false;
                }
                System.out.println(result);
                if(result){
                    try{
                        result=serviceEncuesta.saveEncuesta(datos);
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                }
                if(result){
                    response.sendRedirect("inicio?message=succesfully");
                }else{
                    response.sendRedirect("inicio?message=error");
                }
                break;
            case "/update-persona":
                break;
            case "/":
                break;
            default:
                response.sendRedirect("get-encuesta");
                break;
        }
    }
}
