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
            switch (flag){
                case "kebiao11":
                    ps = conn.prepareStatement("select * from kebiao11");
                    break;
                case "kebiao12":
                    ps = conn.prepareStatement("select * from kebiao12");
                    break;
                case "kebiao13":
                    ps = conn.prepareStatement("select * from kebiao13");
                    break;
                case "kebiao21":
                    ps = conn.prepareStatement("select * from kebiao21");
                    break;
                case "kebiao22":
                    ps = conn.prepareStatement("select * from kebiao22");
                    break;
                case "kebiao23":
                    ps = conn.prepareStatement("select * from kebiao23");
                    break;
                case "kebiao31":
                    ps = conn.prepareStatement("select * from kebiao31");
                    break;
                case "kebiao32":
                    ps = conn.prepareStatement("select * from kebiao32");
                    break;
                case "kebiao33":
                    ps = conn.prepareStatement("select * from kebiao33");
                    break;
            }
            rs = ps.executeQuery();
            while (rs.next()){
                Kebiao k = new Kebiao();
                k.setJieci(rs.getString("jieci"));
                k.setSubject(rs.getString("subject"));
                k.setJiaoshi(rs.getString("jiaoshi"));
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
