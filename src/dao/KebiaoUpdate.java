package dao;

import entity.Kebiao;
import entity.Teacher;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class KebiaoUpdate {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void add(List<Kebiao> ks, String flag){
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("update kebiao Set subject = ? where jieci = ? and cno = ?");
            for (int i = 0; i < ks.size(); i++){
                ps.setString(1,ks.get(i).getSubject());
                ps.setString(2,ks.get(i).getJieci());
                ps.setString(3,flag);
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
            ps = conn.prepareStatement("update kebiao Set jiaoshi = ? where jieci = ? and cno = ?");
            for (int i = 0; i < ks.size(); i++){
                ps.setString(1,ks.get(i).getJiaoshi());
                ps.setString(2,ks.get(i).getJieci());
                ps.setString(3,flag);
                ps.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
    }

    public void delAll(String cid){
        //参数用的是cid，意思是：如果删除指定的班级的班级信息，则也会在课表的数据库表中删除"相应班级的所有数据"
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("delete from kebiao where cno = ?"); //这里的sql，在delete之后不加"*"
            ps.setString(1,cid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
    }

    public void addAll(String cid){
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("insert into kebiao values (null,?,null,null,?)");
            for (int i = 1; i <= 5; i++){
                for (int j = 1; j <= 7; j++){
                    ps.setString(1,i+""+j);
                    ps.setString(2,cid);
                    ps.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
