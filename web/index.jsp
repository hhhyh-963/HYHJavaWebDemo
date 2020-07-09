<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>剪刀石头布小游戏</title>
      <meta http-equiv="pragma" content="no-cache">
      <meta http-equiv="cache-control" content="no-cache">
      <meta http-equiv="expires" content="0">
      <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
      <meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <%String pa = request.getContextPath(); %>
  <!-- form表单页面跳转 -->
  <form action="result.jsp" method="post">
      <input type="radio" name="option" value="jiandao" >剪刀
      <input type="radio" name="option" value="shitou">石头
      <input type="radio"name="option" value="bu">布
      <input type="submit"value="确定">
  </form>

  </body>
</html>
