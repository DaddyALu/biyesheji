package dao;

import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClassesUpdate {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void del(String cid){
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("delete from classes where cid = ?");
            ps.setString(1,cid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            DBConn.release();
        }
    }
    public void add(String cid, String nianji, String banji, String desc){
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("insert into classes value (?,?,?,?)");
            ps.setString(1,cid);
            ps.setString(2,nianji);
            ps.setString(3,banji);
            ps.setString(4,desc);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            DBConn.release();
        }
    }
}
