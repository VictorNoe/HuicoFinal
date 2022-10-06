package utez.edu.mx.aweb.extrauno.modelo;

import utez.edu.mx.aweb.extrauno.utils.MySQLConnetion;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DaoEncuesta {
    public boolean savePersona(BeanDatos beanDatos) {
        boolean result = false;
        try (
                Connection connection = MySQLConnetion.getConnection();
                PreparedStatement pstm = connection.prepareStatement("insert into personas (Nombre, Escuela, Nombre_Encuesta, pregunta1, pregunta2 , pregunta3 , pregunta4 , pregunta5, pregunta6, pregunta7, pregunta8, total ) value (?,?,?,0,0,0,0,0,0,0,0,0.0)");
                ){
            pstm.setString(1, beanDatos.getNombre());
            pstm.setString(2, beanDatos.getEscuela());
            pstm.setInt(3, beanDatos.getEncuesta());
            result = pstm.executeUpdate()==1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
