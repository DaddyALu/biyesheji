package servlet.jiaoshi;

import dao.TeacherDao;
import dao.TeacherDaoImpl;
import entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/JiaoshiServlet")
public class JiaoshiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //查看所有教师信息
        TeacherDao teacherDao = new TeacherDaoImpl();
        List<Teacher> teachers = teacherDao.getAll();
        req.getSession().setAttribute("ts",teachers);
        resp.sendRedirect("jiaoshiList.jsp");
    }
}
