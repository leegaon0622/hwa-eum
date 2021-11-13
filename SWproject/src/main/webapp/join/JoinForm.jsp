<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 화면</title>
    <style>
    div{padding-left: 800px;}
    </style>    

    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>

    <script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
        }      
    </script>
</head>
<body>
    <div id="wrap">
        <br>
        <b><font size="6" color="black">회원가입</font></b>
        <br><br>

        <form method="post" action="../pro/JoinPro.jsp">
            <table>
                <tr>
                    <td id="title">아이디</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="id"  size="30" placeholder="아이디 입력(5~11글자)" maxlength="20">
                        <input type="button" value="중복확인" >    
                    </td>
                </tr>

                <tr>
                    <td id="title">비밀번호</td>
                  </tr>
                <tr>
                    <td>
                        <input type="password" name="password" size="40" placeholder="비밀번호(숫자,영문,특수문자 포함 최소 8자)" maxlength="15">
                    </td>
                </tr>

                <tr>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" size="40" maxlength="15">
                    </td>
                </tr>

                <tr>
                    <td id="title">이름</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" size="40" maxlength="40">
                    </td>
                </tr>

                 <tr>
                    <td id="title">생일</td>
                </tr>
                <tr>
                    <td>
                         <input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6" >
                        <select name="birthmm">
                            <option value="">월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4" >
                    </td>

                </tr>

                 <tr>
                    <td id="title">성별</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="gender" value="남" checked>남
                        <input type="radio" name="gender" value="여" >여
                    </td>
                </tr>                 

                <tr>
                    <td id="title">이메일</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="mail1" size="20" maxlength="30"> @
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>

                <tr>
                    <td id="title">전화번호</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" size="40" name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">주소</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" size="40" name="address"/>
                    </td>
                </tr>
            </table>            
            <br>            
            <input type="submit" value="가입"/>  
            <input type="button" value="취소" onclick="javascript:window.location='../login/LoginForm.jsp'">
        </form>
    </div>
</body>
</html> 