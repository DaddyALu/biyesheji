package servlet;

import dao.KemuAll;
import dao.KemuUpdate;
import entity.Kemu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/TianjiaServlet")
public class TianjiaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取表单信息，添加科目
        int id = Integer.parseInt(req.getParameter("id"));
        String subject = req.getParameter("subject");
        KemuUpdate up = new KemuUpdate();
        up.add(id,subject);

        //科目列表
        KemuAll k = new KemuAll();
        List<Kemu> kss = k.findAll();
        req.getSession().setAttribute("kss",kss);

        resp.sendRedirect("kemubianji.jsp");
    }
}
