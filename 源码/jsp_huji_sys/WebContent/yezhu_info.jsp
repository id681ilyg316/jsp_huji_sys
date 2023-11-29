<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="db" class="bao.DB" scope="page"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>
<body> 
<%  
String users=(String)session.getAttribute("users");
String sqlo="select * from yonghu where username='"+users+"' ";
ResultSet rs=db.executeQuery(sqlo);
if(!rs.next())
{
	out.println("��ʱû����Ϣ");
}
else{
%>
<form id="form1" name="form1" action="">
  <table width="830" height="487" border="0">
    <tr>
      <td valign="top" style="padding-left:15px; padding-top:15px;" background="image/right.jpg"><table width="500" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="35">&nbsp; �û�������
            <input name="username" type="text" id="username" value="<%=rs.getString("username") %>" readOnly="true"/></td>
        </tr>
        <tr>
          <td height="35">&nbsp; �û����룺
            <input name="password" type="text" id="password" value="<%=rs.getString("password") %>"readOnly="true"/></td>
        </tr>
        <tr>
          <td height="35">&nbsp; �û��绰��
            <input name="tel" type="text" id="tel" value="<%=rs.getString("tel") %>"readOnly="true"/></td>
        </tr>
		 <tr>
          <td height="35">&nbsp; �������֣�
            <input name="l_name" type="text" id="l_name" value="<%=rs.getString("l_name") %>"readOnly="true"/></td>
        </tr>
		 <tr>
          <td height="35">&nbsp; �û�¥�㣺
            <input name="l_ceng" type="text" id="l_ceng" value="<%=rs.getString("l_ceng") %>"readOnly="true"/></td>
        </tr>
		 <tr>
          <td height="35">&nbsp; �û��ݺţ�
            <input name="l_wu" type="text" id="l_wu" value="<%=rs.getString("l_wu") %>"readOnly="true"/></td>
        </tr>
		 <tr>
          <td height="35">&nbsp; �û���Ԫ��
            <input name="l_danyuan" type="text" id="l_danyuan" value="<%=rs.getString("l_danyuan") %>"readOnly="true"/></td>
        </tr>

		 <tr>
          <td height="35">&nbsp; ��ע��Ϣ��
            <textarea name="beizhu" cols="50" rows="5" id="beizhu" disabled="disabled" style="resize:none"><%=rs.getString("beizhu") %></textarea></td>
        </tr>

      </table></td>
    </tr>
  </table>
</form>
<%} %>
</body>
</html>