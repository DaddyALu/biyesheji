package dao;

import entity.Kebiao;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class KebiaoAll {

    public List<Kebiao> findAll(String flag){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Kebiao> ks = new ArrayList<Kebiao>();
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select * from kebiao where cno = ?");
            ps.setString(1,flag);
            rs = ps.executeQuery();
            while (rs.next()){
                Kebiao k = new Kebiao();
                k.setKid(rs.getInt("kid"));
                k.setJieci(rs.getString("jieci"));
                k.setSubject(rs.getString("subject"));
                k.setJiaoshi(rs.getString("jiaoshi"));
                k.setCno(rs.getInt("cno"));
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
