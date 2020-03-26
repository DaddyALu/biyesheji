package servlet.jiaoshi;

import dao.*;
import entity.Classes;
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
import java.util.List;

@WebServlet("/JiaoshiKebiaoServlet")
public class JiaoshiKebiaoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得要查看哪位教师的课表
        String name = req.getParameter("name");

        //传递该教师的名字
        req.getSession().setAttribute("name",name);

        //课表
        KebiaoAll k = new KebiaoAll();
        List<Kebiao> ks = k.findAll("11");
        req.getSession().setAttribute("ks",ks);

        //获得该教师被安排的节次
        List<Teacher> ls = new KebiaoAll().jiaoshi(name);
        //根据cno查该班级的desc
        String s = null;
        for (Teacher l : ls) {
            s = new ClassesAll().findDesc(l.getCno());
            l.setDesc(s);
        }
        req.getSession().setAttribute("ls",ls);

        //页面跳转
        resp.sendRedirect("jiaoshiKebiao.jsp");
    }
}
