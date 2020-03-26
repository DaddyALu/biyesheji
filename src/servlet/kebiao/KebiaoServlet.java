package servlet.kebiao;

import dao.ClassesAll;
import entity.Classes;
import entity.Kebiao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/KebiaoServlet")
public class KebiaoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ClassesAll cs = new ClassesAll();
        List<Classes> css = cs.findAll();
        req.getSession().setAttribute("css",css);
        resp.sendRedirect("kebiao.jsp");
    }
}
