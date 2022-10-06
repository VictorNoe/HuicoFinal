package utez.edu.mx.aweb.extrauno.control;

import utez.edu.mx.aweb.extrauno.modelo.BeanDatos;
import utez.edu.mx.aweb.extrauno.modelo.DaoEncuesta;

public class ServiceEncuesta {
    public boolean savePersona(BeanDatos beanDatos) {
        DaoEncuesta daoEncuesta = new DaoEncuesta();
        boolean result = daoEncuesta.savePersona(beanDatos);
        return result;
    }
}
