package servlet;

import dao.*;
import entity.Classes;
import entity.Kemu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ClassesShanchuServlet")
public class ClassesShanchuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //按获取到的id删除
        String cid = req.getParameter("id");

        //删除需要先删除课表数据，因为外键为班级信息，先删除班级信息会在课表信息的删除时被阻止

        //删除该班级相应的课表数据
        KebiaoUpdate kbup = new KebiaoUpdate();
        kbup.delAll(cid);

        //删除班级信息
        ClassesUpdate up = new ClassesUpdate();
        up.del(cid);

        //查询并获取在删除后的 最新班级列表
        ClassesAll cs = new ClassesAll();
        List<Classes> css = cs.findAll();
        req.getSession().setAttribute("css",css);

        resp.sendRedirect("kebiao.jsp");
    }
}
