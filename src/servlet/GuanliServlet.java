package servlet;

import dao.KebiaoAll;
import dao.KemuAll;
import dao.TeacherDao;
import dao.TeacherDaoImpl;
import entity.Kebiao;
import entity.Kemu;
import entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/GuanliServlet")
public class GuanliServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //确认表
        String flag = "kebiao"+req.getParameter("id");
        req.getSession().setAttribute("flag",flag);

        req.getSession().setAttribute("banji1",""+req.getParameter("id"));

        //课表
        KebiaoAll k = new KebiaoAll();
        List<Kebiao> ks = k.findAll(flag);
        req.getSession().setAttribute("ks",ks);

        //科目
        KemuAll kk = new KemuAll();
        List<Kemu> kss = kk.findAll();
        req.getSession().setAttribute("kss",kss);

        resp.sendRedirect("kebiaoguanli.jsp");
    }
}
