package combine;

public class database {

    private String url = "jdbc:mysql://localhost/schooldatabase";
    private String username = "root";
    private String password = "passwd";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver"); // You don't need to load it on every single opened connection.
        } catch (ClassNotFoundException) {
            throw new ExceptionInInitializerError("MySQL JDBC driver missing in classpath", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

}