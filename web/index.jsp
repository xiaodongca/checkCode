<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/20 0020
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>验证码</title>
  </head>
  <script type="text/javascript">
      function reloadCode(){
          var time = new Date().getTime();
          document.getElementById("imagecode").src="<%=request.getContextPath()%>/servlet/ImageServlet?d="+time;
      }
  </script>
  <body>
  <form action="<%=request.getContextPath()%>/servlet/LoginServlet" method="get">
  验证码：<input type="text" name="checkcode"/>
  <img alt="验证码" id="imagecode" src="<%=request.getContextPath()%>/servlet/ImageServlet">
  <a href="javascript:reloadCode();">看不清楚</a>
  <br>
    <input type="submit" value="提交">
  </form>
  </body>
</html>














