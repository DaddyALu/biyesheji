package servlet;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=utf-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserDao dao = new UserDaoImpl();
        User user = dao.login(username,password);
        //用户名密码正确
        if (user != null){
            req.getSession().setAttribute("user",user);
            req.getSession().setAttribute("username",username);
            resp.sendRedirect("home.jsp");
        }
        //用户名密码错误
        else {
            Cookie cookie = new Cookie("error","1");
            resp.addCookie(cookie);
            resp.sendRedirect("index.jsp");
        }


    }
}
