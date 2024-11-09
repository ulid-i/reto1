import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JavaJDBC {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/registro_de_apuntados", "root", ""
            );
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from apuntados");
            System.out.println("0 es que no esta apuntado 1 es que si");
            while (resultSet.next()) {
                System.out.println("lunes: " +resultSet.getInt(6) + " " + " martes: "+ 
                resultSet.getInt(7) + " " + "miercoles: " +resultSet.getInt(8) + " " 
                + "jueves: "+ resultSet.getInt(9) + " " + resultSet.getString(2));
                
            }

            int total=0;
            ResultSet lunes = statement.executeQuery("SELECT SUM(evento_Lunes) FROM apuntados;");
            if (lunes.next()) {
                System.out.println("el lunes hay "+ lunes.getInt(1));total= total + lunes.getInt(1);
                }
            else{System.out.print("no hay apuntados");}

            ResultSet martes = statement.executeQuery("SELECT SUM(evento_Martes) FROM apuntados;"); 
            if (martes.next()) {
                System.out.println("el martes hay " + martes.getInt(1));total= total + martes.getInt(1);
                }
            else{System.out.print("no hay apuntados");}

            ResultSet miercoles = statement.executeQuery("SELECT SUM(evento_Miercoles) FROM apuntados;");
            if (miercoles.next()) {
                System.out.println("el miercoles hay " + miercoles.getInt(1));total= total + miercoles.getInt(1);
                }
            else{System.out.print("no hay apuntados");}

            ResultSet jueves = statement.executeQuery("SELECT SUM(evento_jueves) FROM apuntados;");
            if (jueves.next()) {
                System.out.println("el jueves hay " + jueves.getInt(1));total= total + jueves.getInt(1);
                }
            else{System.out.print("no hay apuntados");}
           System.out.println("hay una cantidad total de " + total +" personas inscritas");
           
            connection.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
