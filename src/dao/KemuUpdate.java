package dao;

import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class KemuUpdate {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void del(String s) throws SQLException {
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("delete from courses where id = ?");
            ps.setString(1,s);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            DBConn.release();
        }
    }
    public void add(int i, String s){
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("insert into courses value (?,?)");
            ps.setInt(1,i);
            ps.setString(2,s);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            DBConn.release();
        }
    }
}
