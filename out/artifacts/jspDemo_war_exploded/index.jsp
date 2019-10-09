<%@page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@page import="java.net.URLDecoder" %>
<html>
<head>
  <meta http-equiv="content-type" content="text/html;charset=GB18030">
  <title>通过cookie保存并读取用户登录信息</title>
</head>
<body>
<%
  Cookie[] cookies=request.getCookies();//从request中获取cookie对象的集合
  String user="";//登录用户
  String date="";//登录时间
  if(cookies!=null){//遍历cookie对象的集合
    for(int i=0;i<cookies.length;i++){
      if(cookies[i].getName().equals("mrCookie")){//如果cookie对象的名称为mrCookie
        user=URLDecoder.decode(cookies[i].getValue());//获取用户名
        date=cookies[i].getValue();//获取注册时间
      }
    }
  }
  if("".equals(user)&&"".equals(date)){//如果没有注册
%>
游客您好，欢迎您初次光临！
<form action="deal.jsp" method="post">
  请输入姓名：<input name="user" type="text" value="">
  <input type="submit" value="确定">
</form>
<%
}else{
%>
欢迎[<br><%=user %></b>]再次光临<br>
您注册的时间是：<%=date %>
<%
  }
%>
</body>
</html>
