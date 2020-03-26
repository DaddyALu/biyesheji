package servlet;

import dao.*;
import entity.Kebiao;
import entity.Kemu;
import entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@WebServlet("/GaijiaoshiServlet")
public class GaijiaoshiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //确认表
        String flag = ""+req.getParameter("id");
        req.getSession().setAttribute("flag",flag);

        //获取当前访问课表的班级信息
        req.getSession().setAttribute("banji",""+req.getParameter("name"));

        //教师
        TeacherDao teacherDao = new TeacherDaoImpl();
        List<Teacher> teachers = teacherDao.getAll();
        req.getSession().setAttribute("ts",teachers);

        //课表
        KebiaoAll k = new KebiaoAll();
        List<Kebiao> ks = k.findAll(flag);
        req.getSession().setAttribute("ks",ks);

        //科目
        KemuAll kk = new KemuAll();
        List<Kemu> kss = kk.findAll();
        req.getSession().setAttribute("kss",kss);

        //获得每一位老师被排过的节次
        List<Teacher> ls = new ArrayList<>();
        List<List<Teacher>> llll = new ArrayList<>();
        for (Teacher teacher : teachers) {
            //获取每一位老师被安排的节次
            ls = new KebiaoAll().jiaoshi(teacher.getName());
            llll.add(ls);
        }
        req.getSession().setAttribute("llll",llll);

        //页面跳转
        resp.sendRedirect("kebiaojiaoshi.jsp");

    }
}






