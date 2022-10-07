package utez.edu.mx.aweb.extrauno.control;

import utez.edu.mx.aweb.extrauno.modelo.BeanDatos;
import utez.edu.mx.aweb.extrauno.modelo.BeanEncuesta;
import utez.edu.mx.aweb.extrauno.modelo.DaoEncuesta;

import java.util.List;

public class ServiceEncuesta {

    public List<BeanEncuesta> listEncuesta(){
        DaoEncuesta daoEncuesta= new DaoEncuesta();
        return daoEncuesta.listEncuesta();
    }
    public boolean saveEncuesta(BeanDatos datos){
        DaoEncuesta daoEncuesta= new DaoEncuesta();
        boolean result= daoEncuesta.saveEncuesta(datos);
        BeanEncuesta encuesta=getEncuesta(datos.getId());
        result=daoEncuesta.update_stats(datos.getId(),encuesta.getCantidad()+1,encuesta.getPorcentaje()+datos.getTotal());
        return result;
    }
    public BeanEncuesta getEncuesta(int id){
        DaoEncuesta daoEncuesta= new DaoEncuesta();
        return daoEncuesta.getEncuesta(id);
    }

}
