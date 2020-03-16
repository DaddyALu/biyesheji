package dao;

import entity.Kebiao;
import entity.Kemu;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class KemuAll {

    public List<Kemu> findAll(){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Kemu> ks = new ArrayList<>();
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select * from courses");
            rs = ps.executeQuery();
            while (rs.next()){
                Kemu k = new Kemu();
                k.setId(rs.getInt("id"));
                k.setSubject(rs.getString("subject"));
                ks.add(k);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
        return ks;
    }
}
