package servlet.kebiao;

import dao.KebiaoAll;
import dao.KemuAll;
import entity.Kebiao;
import entity.Kemu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ChakanServlet")
public class ChakanServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //通过请求体的id判读是读哪张表
        String flag = ""+req.getParameter("id");

        //获取当前访问课表的班级信息
        req.getSession().setAttribute("banji",""+req.getParameter("name"));

        //课表
        KebiaoAll k = new KebiaoAll();
        List<Kebiao> ks = k.findAll(flag);
        req.getSession().setAttribute("ks",ks);

        //科目
        KemuAll kk = new KemuAll();
        List<Kemu> kss = kk.findAll();
        req.getSession().setAttribute("kss",kss);

        resp.sendRedirect("kebiaochakan.jsp");
    }
}
