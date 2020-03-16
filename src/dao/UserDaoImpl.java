package dao;

import entity.User;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImpl implements UserDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    User user = new User();

    @Override
    public User login(String username, String password) {
        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select * from user where username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            if (rs.next()){
                user.setUid(rs.getInt("uid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }else {
                user = null;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
        return user;
    }
}
