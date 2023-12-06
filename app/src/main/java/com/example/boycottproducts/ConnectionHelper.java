package com.example.boycottproducts;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.StrictMode;
import android.util.Log;
import android.widget.Toast;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionHelper {
    private static String ip ="192.168.1.18";
    private static String port ="1433";
    private static String db ="products";
    private static String uname ="self";
    private static String password ="1234";
    private static String Classs = "net.sourceforge.jtds.jdbc.Driver";
    public  Connection conClass(){
        String url ;
        Connection connection = null;
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        try {
            Class.forName(Classs);
            url = "jdbc:jtds:sqlserver://"+ip+":"+port+";"
                    +"databaseName="+db+";user="+uname+";password="+password+";";
            connection = DriverManager.getConnection(url);
        }catch (Exception e) {
            e.printStackTrace();
            Log.i("afafasfasf", "onCreate: "+e.getMessage());
        }
        return connection;
    }


}
