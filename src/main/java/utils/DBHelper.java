package utils;


import java.sql.*;

public  class DBHelper {
    private static String  url="jdbc:mysql://localhost:3306/StudentManagement?useUnicode=true&characterEncoding=utf-8";
    private static  String user="root";
    private static  String password="";
    private static String Driver="com.mysql.jdbc.Driver";
    private  static  Connection connection = null;
    static {
        try {
            Class.forName(Driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public  static  Connection getConnection(){
        if (connection == null){
            try {
                connection = DriverManager.getConnection(url,user,password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return  connection;
    }

    public static void close(Connection connection){
        if (connection !=null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
