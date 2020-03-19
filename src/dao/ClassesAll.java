package dao;

import entity.Classes;
import entity.Kemu;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClassesAll {

    public List<Classes> findAll(){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Classes> cs = new ArrayList<>();
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select * from classes");
            rs = ps.executeQuery();
            while (rs.next()){
                Classes c = new Classes();
                c.setCid(rs.getInt("cid"));
                c.setNianji(rs.getString("nianji"));
                c.setBanji(rs.getString("banji"));
                c.setDesc(rs.getString("desc"));
                cs.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
        return cs;
    }
}
