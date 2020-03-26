package servlet.kebiao;

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

@WebServlet("/PaijiaoshiServlet")
public class PaijiaoshiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取表单信息
        List<Kebiao> ks = new ArrayList<Kebiao>();
        Enumeration<String> parameterNames = req.getParameterNames();
        while(parameterNames.hasMoreElements()) {
            Kebiao k = new Kebiao();
            String name = (String)parameterNames.nextElement();
            String value = req.getParameter(name);
            k.setJieci(name);
            k.setJiaoshi(value);
            ks.add(k);
        }

        //更新数据库表
        KebiaoUpdate up = new KebiaoUpdate();
        up.addJ(ks,(String)req.getSession().getAttribute("flag"));
        resp.sendRedirect("kebiao.jsp");
    }
}
