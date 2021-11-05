<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jsp.member.model.MemberDAO" %>    
<%@ page import="jsp.member.model.MemberBean" %>
<html>
<head>
    <%
        String id = session.getAttribute("sessionID").toString();
    
        MemberDAO dao = MemberDAO.getInstance();
        MemberBean memberBean = dao.getUserInfo(id);
    %>
 
    <title>ȸ������ ����ȭ��</title>
    
   <style>
    	div{padding-left: 800px;}
    	body{background-color : LemonChiffon}
	</style>
    
    <script>
    
        function init(){
            setComboValue("<%=memberBean.getMail2()%>");
        }
 
        function setComboValue(val) 
        {
            var selectMail = document.getElementById('mail2'); // select ���̵� �����´�.
            for (i = 0, j = selectMail.length; i < j; i++)  // select �ϴ� option ����ŭ �ݺ��� ������.
            {
                if (selectMail.options[i].value == val)  // �ԷµȰ��� option�� value�� ������ ��
                {
                    selectMail.options[i].selected = true; // ��������� üũ�ǵ��� �Ѵ�.
                    break;
                }
            }
        }
        
        // ��й�ȣ �Է¿��� üũ
        function checkValue() {
            if(!document.userInfo.password.value){
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }
        } 
        
    </script>
    
</head>

<body onload="init()">
		<br>
        <b><font size="6" color="black" >ȸ������ ����</font></b>
        <br><br>

		<form method="post" action="MainForm.jsp?contentPage=member/pro/ModifyPro.jsp" 
                name="userInfo" onsubmit="return checkValue()">

		<table>
                <tr>
                    <td id="title">���̵�</td>
                </tr>
                <tr>
                    <td><%=memberBean.getId() %></td> 
                </tr>
                        
                <tr>
                    <td id="title">��й�ȣ</td>
                  </tr>
                <tr>
                    <td><input type="password" name="password" maxlength="50" 
                            value="<%=memberBean.getPassword() %>"></td>
                </tr>
                                    
                <tr>
                    <td id="title">�̸�</td>
                </tr>
                <tr>
                    <td><%=memberBean.getName() %></td>
                </tr>
                    
                <tr>
                    <td id="title">����</td>
                </tr>
                <tr>
                    <td><%=memberBean.getGender() %></td>
                </tr>                 
                          
                 <tr>
                    <td id="title">����</td>
                    <td>
                        <%=memberBean.getBirthyy() %>�� 
                        <%=memberBean.getBirthmm() %>�� 
                        <%=memberBean.getBirthdd() %>��
                    </td>
                </tr>         
                          
                <tr>
                    <td id="title">�̸���</td>
                </tr>
                <tr>
                    <td>
                    	<input type="text" name="mail1" maxlength="50" 
                            value="<%=memberBean.getMail1() %>">
                        @
                        <select name="mail2" id="mail2">
                            <option value="naver.com">naver.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="daum.net" >daum.net</option>
                            <option value="nate.com">nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">��ȭ��ȣ</td>
                </tr>
                <tr>
                    <td><input type="text" name="phone" value="<%=memberBean.getPhone() %>"></td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                </tr>
                <tr>
                    <td> <input type="text" size="50" name="address"
                            value="<%=memberBean.getAddress() %>"></td>
                </tr>
            </table>            
            <br> 
            <input type="button" value="���" onclick="javascript:window.location='MainForm.jsp'">
            <input type="submit" value="����"/>  
    </form>
    
</body>
</html>