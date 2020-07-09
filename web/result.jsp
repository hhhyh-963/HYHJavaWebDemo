<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>就这？</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
</head>

</body>
<%
    String pathnew=request.getContextPath();

    String res=request.getParameter("option");
    String reslong= res ;

    int com=(int)Math.random()*3;
    String computer=String.valueOf(com);

    if(computer.equals("0")){
        computer="剪刀";
    }
    else if(computer.equals("1")){
        computer="石头";
    }
    else{
        computer="布";
    }

    int win=0;
    int lost=0;
    int ping=0;
    Object objwin=session.getAttribute("win");
    Object objlost=session.getAttribute("lost");
    Object objping=session.getAttribute("ping");
    if(objwin==null){
        session.setAttribute("win",String.valueOf(win));
    }
    if(objlost==null){
        session.setAttribute("lost",String.valueOf(lost));
    }
    if(objping==null){
        session.setAttribute("ping",String.valueOf(ping));
    }
%>
<h3>结果是</h3>

您出的是：<%=reslong %>
<span style="color: red">vs</span>
电脑出的是：<%=computer %>
<%
    if(res.equals(computer)){
        out.println("平局!");
        session.setAttribute("ping",String.valueOf(Integer.valueOf((String)session.getAttribute("ping"))+1));
    }

    else if((res.equals("jiandao")&&computer.equals("bu"))||(res.equals("shitou")&&computer.equals("jiandao"))||(res.equals("bu")&&computer.equals("shiyou"))){
        out.println("您赢了!");
        session.setAttribute("win",String.valueOf(Integer.valueOf((String)session.getAttribute("win"))+1));
    }

    else{
        out.println("您输了!");
        session.setAttribute("lost",String.valueOf(Integer.valueOf((String)session.getAttribute("lost"))+1));

    }

%>
<a href="index.jsp">Play again！</a>
</html>
