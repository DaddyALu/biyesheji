package servlet.banji;

import dao.*;
import entity.Classes;
import entity.Kemu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ClassesTianjiaServlet")
public class ClassesTianjiaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取表单信息，添加班级信息
        String cid = req.getParameter("cid");
        String nianji = req.getParameter("nianji");
        String banji = req.getParameter("banji");
        String desc = req.getParameter("desc");

        //先判断该班级编号是否存在，若不存在才可添加
        Boolean flag = false;
        ClassesAll cs = new ClassesAll();
        List<Classes> css = cs.findAll();
        for (Classes classes : css) {
            if(classes.getCid() == Integer.parseInt(cid)){
                flag = true;
            }
        }

        //如果不存在重复，执行添加
        if (!flag){
            //添加时需要先添加班级信息，否则先添加课表数据会显示cno不存在

            //添加班级信息
            ClassesUpdate up = new ClassesUpdate();
            up.add(cid,nianji,banji,desc);

            //为该班级创建相应的课表数据
            KebiaoUpdate kbup = new KebiaoUpdate();
            kbup.addAll(cid);

            //查询并获取添加后的 最新班级列表
            css = cs.findAll();
            req.getSession().setAttribute("css",css);

            resp.sendRedirect("kebiao.jsp");
        }else {
            req.getSession().setAttribute("flag","1");
            resp.sendRedirect("banjitianjia.jsp");
        }

    }
}
