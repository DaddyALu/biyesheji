package dao;

import entity.Kebiao;
import entity.Teacher;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class KebiaoAll {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Kebiao> findAll(String flag){
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

    public List<Teacher> jiaoshi(String jiaoshi){
        List<Teacher> ls = new ArrayList<>();
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select jieci,cno from kebiao where jiaoshi =?");
            ps.setString(1,jiaoshi);
            rs = ps.executeQuery();
            while (rs.next()){
                Teacher t = new Teacher();
                t.setName(jiaoshi);
                t.setJieci(rs.getString("jieci"));
                t.setCno(rs.getString("cno"));
                ls.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConn.release();
        }
        return ls;
    }

}
