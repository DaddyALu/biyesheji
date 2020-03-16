package dao;

import entity.Teacher;
import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TeacherDaoImpl implements TeacherDao {
    @Override
    public List<Teacher> getAll() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Teacher> teachers = new ArrayList<Teacher>();

        try {
            conn = DBConn.getConn();
            ps = conn.prepareStatement("select * from teacher");
            rs = ps.executeQuery();
            while(rs.next()){
                Teacher t = new Teacher();
                t.setTid(rs.getInt("tid"));
                t.setName(rs.getString("name"));
                t.setAge(rs.getInt("age"));
                t.setSubject(rs.getString("subject"));
                t.setTel(rs.getInt("tel"));
                teachers.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return teachers;
    }
}
