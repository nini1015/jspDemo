<%@page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<%@page import="java.net.URLDecoder" %>
<html>
<head>
  <meta http-equiv="content-type" content="text/html;charset=GB18030">
  <title>ͨ��cookie���沢��ȡ�û���¼��Ϣ</title>
</head>
<body>
<%
  Cookie[] cookies=request.getCookies();//��request�л�ȡcookie����ļ���
  String user="";//��¼�û�
  String date="";//��¼ʱ��
  if(cookies!=null){//����cookie����ļ���
    for(int i=0;i<cookies.length;i++){
      if(cookies[i].getName().equals("mrCookie")){//���cookie���������ΪmrCookie
        user=URLDecoder.decode(cookies[i].getValue());//��ȡ�û���
        date=cookies[i].getValue();//��ȡע��ʱ��
      }
    }
  }
  if("".equals(user)&&"".equals(date)){//���û��ע��
%>
�ο����ã���ӭ�����ι��٣�
<form action="deal.jsp" method="post">
  ������������<input name="user" type="text" value="">
  <input type="submit" value="ȷ��">
</form>
<%
}else{
%>
��ӭ[<br><%=user %></b>]�ٴι���<br>
��ע���ʱ���ǣ�<%=date %>
<%
  }
%>
</body>
</html>
