package hack;
import java.sql.*;

public class HackDemo {

private static String instanceConnectionName = "financedummydb";
private static String databaseName = "financedummydb";
private static Connection connection = null;
private static String userName="financedummydb";
private static String password="financedummydb";
private static String dbURL = String.format("jdbc:mysql://google/%s?cloudSqlInstance=%s&"
                                + "socketFactory=com.google.cloud.sql.mysql.SocketFactory",
                                databaseName, instanceConnectionName);

public static void main(String[] args)
{
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (Exception e) {
                System.out.println("Where is your MySQL JDBC Driver?");
                e.printStackTrace();
                return;
            }
            System.out.println("MySQL JDBC Driver Registered!");
            CreateConnection();
    }

    public static void CreateConnection() {
            try {
            // connect
                connection = DriverManager.getConnection(dbURL,userName, password);
            } catch (SQLException ex) {
                System.out.println("Connection Failed! Check output console");
                ex.printStackTrace();
            }
        }
}
