package dao;

import entity.Kebiao;
import entity.Teacher;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class KebiaoUpdate {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void add(List<Kebiao> ks, String flag){
        try {
            conn = DBConn.getConn();
            switch (flag){
                case "kebiao11":
                    ps = conn.prepareStatement("update kebiao11 Set subject = ? where jieci = ?");
                    break;
                case "kebiao12":
                    ps = conn.prepareStatement("update kebiao12 Set subject = ? where jieci = ?");
                    break;
                case "kebiao13":
                    ps = conn.prepareStatement("update kebiao13 Set subject = ? where jieci = ?");
                    break;
                case "kebiao21":
                    ps = conn.prepareStatement("update kebiao21 Set subject = ? where jieci = ?");
                    break;
                case "kebiao22":
                    ps = conn.prepareStatement("update kebiao22 Set subject = ? where jieci = ?");
                    break;
                case "kebiao23":
                    ps = conn.prepareStatement("update kebiao23 Set subject = ? where jieci = ?");
                    break;
                case "kebiao31":
                    ps = conn.prepareStatement("update kebiao31 Set subject = ? where jieci = ?");
                    break;
                case "kebiao32":
                    ps = conn.prepareStatement("update kebiao32 Set subject = ? where jieci = ?");
                    break;
                case "kebiao33":
                    ps = conn.prepareStatement("update kebiao33 Set subject = ? where jieci = ?");
                    break;
            }
            for (int i = 0; i < ks.size(); i++){
                ps.setString(1,ks.get(i).getSubject());
                ps.setString(2,ks.get(i).getJieci());
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
    }

    public void addJ(List<Kebiao> ks, String flag){
        try {
            conn = DBConn.getConn();
            switch (flag){
                case "kebiao11":
                    ps = conn.prepareStatement("update kebiao11 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao12":
                    ps = conn.prepareStatement("update kebiao12 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao13":
                    ps = conn.prepareStatement("update kebiao13 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao21":
                    ps = conn.prepareStatement("update kebiao21 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao22":
                    ps = conn.prepareStatement("update kebiao22 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao23":
                    ps = conn.prepareStatement("update kebiao23 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao31":
                    ps = conn.prepareStatement("update kebiao31 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao32":
                    ps = conn.prepareStatement("update kebiao32 Set jiaoshi = ? where jieci = ?");
                    break;
                case "kebiao33":
                    ps = conn.prepareStatement("update kebiao33 Set jiaoshi = ? where jieci = ?");
                    break;
            }
            for (int i = 0; i < ks.size(); i++){
                ps.setString(1,ks.get(i).getJiaoshi());
                ps.setString(2,ks.get(i).getJieci());
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
    }
}
