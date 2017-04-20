package com.cxd;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by cai x d
 * on2017/4/20 0020.
 */
public class LoginServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
       String piccode = (String)request.getSession().getAttribute("piccode");
       String checkcode = request.getParameter("checkcode");
       checkcode = checkcode.toUpperCase();
       response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       if (checkcode.equals(piccode)){
           out.println("验证码输入正确！");
       }else {
           out.println("验证码输入错误！！！");
       }
       out.flush();
       out.close();
    }
}
