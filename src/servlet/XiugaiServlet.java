package servlet;

import dao.KebiaoUpdate;
import entity.Kebiao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet("/XiugaiServlet")
public class XiugaiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求体中的参数
        List<Kebiao> ks = new ArrayList<Kebiao>();
        Enumeration<String> parameterNames = req.getParameterNames();
        while(parameterNames.hasMoreElements()) {
            Kebiao k = new Kebiao();
            String name = (String)parameterNames.nextElement();
            String value = req.getParameter(name);
            k.setJieci(name);
            k.setSubject(value);
            ks.add(k);
        }

        //执行表更新操作
        KebiaoUpdate up = new KebiaoUpdate();
        up.add(ks,(String)req.getSession().getAttribute("flag"));
        resp.sendRedirect("kebiao.jsp");
    }
}
