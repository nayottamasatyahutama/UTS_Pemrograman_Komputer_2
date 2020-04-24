/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package appPerumahan;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Nayo
 */
public class koneksi {
   public static Connection MySQL(){
        try {
            MysqlDataSource ds = new MysqlDataSource();
            ds.setUser(pengaturan.username);
            ds.setPassword(pengaturan.password);
            ds.setServerName(pengaturan.server);
            ds.setDatabaseName(pengaturan.dbName);
            ds.setServerTimezone(pengaturan.time);
            ds.setPortNumber(Integer.parseInt(pengaturan.port));
            Connection c = ds.getConnection();
            return c;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            return null;
        }
        }
    
}
