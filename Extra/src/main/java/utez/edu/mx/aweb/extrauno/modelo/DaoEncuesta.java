package utez.edu.mx.aweb.extrauno.modelo;

import java.sql.ResultSet;
import utez.edu.mx.aweb.extrauno.utils.MySQLConnetion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class DaoEncuesta {
    public BeanEncuesta getEncuesta(int id){
        BeanEncuesta encuesta= new BeanEncuesta();
        try(Connection connection=MySQLConnetion.getConnection();
        PreparedStatement pstm= connection.prepareStatement("select * from encuesta where id=?;");
        ){
            pstm.setInt(1,id);
            ResultSet rs=pstm.executeQuery();
            while (rs.next()){
                encuesta.setId(id);
                encuesta.setCantidad(rs.getInt("Cantidad"));
                encuesta.setPorcentaje(rs.getInt("Porcentaje"));
                encuesta.setName(rs.getInt("Nombre_Encuesta"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return encuesta;
    }
    public List<BeanEncuesta> listEncuesta(){
        List<BeanEncuesta>listEncuesta=new ArrayList<>();
        try{
            Connection connection=MySQLConnetion.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs=statement.executeQuery("select id,Nombre_Encuesta from encuesta;");
            while (rs.next()){
                BeanEncuesta encuesta= new BeanEncuesta();
                encuesta.setId(rs.getInt("id"));
                encuesta.setName(rs.getInt("Nombre_Encuesta"));
                listEncuesta.add(encuesta);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return listEncuesta;
    }
    public boolean saveEncuesta(BeanDatos datos) {
        boolean result = false;
        try (
                Connection connection = MySQLConnetion.getConnection();
                PreparedStatement pstm = connection.prepareStatement("insert into personas (Nombre, Escuela, id_encuesta, pregunta1, pregunta2 , pregunta3 , pregunta4 , pregunta5, pregunta6, pregunta7, pregunta8, total ) value (?,?,?,?,?,?,?,?,?,?,?,?)");
                ){
            pstm.setString(1, datos.getNombre());
            pstm.setString(2, datos.getEscuela());
            pstm.setInt(3, datos.getId());
            pstm.setInt(4,datos.getEncuesta1());
            pstm.setInt(5,datos.getEncuesta2());
            pstm.setInt(6,datos.getEncuesta3());
            pstm.setInt(7,datos.getEncuesta4());
            pstm.setInt(8,datos.getEncuesta5());
            pstm.setInt(9,datos.getEncuesta6());
            pstm.setInt(10,datos.getEncuesta7());
            pstm.setInt(11,datos.getEncuesta8());
            pstm.setInt(12,datos.getTotal());
            result = pstm.executeUpdate()==1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public boolean update_stats(int id, int cantidad, double porcentaje){
        boolean result=false;
        try(Connection connection=MySQLConnetion.getConnection();
        PreparedStatement pstm= connection.prepareStatement("update encuesta set cantidad=?, porcentaje=? where id=?;");
        ){
            pstm.setInt(1,cantidad);
            pstm.setDouble(2,porcentaje);
            pstm.setInt(3,id);
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
