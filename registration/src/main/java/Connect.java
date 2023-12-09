import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	public static Connection getConnection() throws SQLException {
		 Connection con = null;
	        String dbName = "userdb";
	        String url = "jdbc:sqlserver://localhost:1433;databaseName="+dbName+";encrypt=true;trustServerCertificate=true";
	        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	        String databaseUserName = "sa";
	        String databasePassword = "123";

            try {
				Class.forName(driver);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				System.out.println(e1.getException());
			}
              ;
           
   try{
    con = DriverManager.getConnection(url,databaseUserName,databasePassword);
    System.out.println("connect success");
    return con;
   }catch(SQLException e){
       System.out.println(e.toString());
       
       return null;
   }           
}
	
}