<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 9/29/2019
  Time: 8:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<form id="outside" name="Actform"  method="get"  >
    <table>
        <tr>
            <td><label for="loginField">Логин</label></td>
            <td><input id="loginField" type="text"  required minlength="2"  name="login"></td>
        </tr>
        <tr>
            <td><label for="passwordField">Пароль</label></td>
            <td><input id="passwordField" type="password"  required minlength="2"  name="password"></td>
        </tr>

    </table>
    <input id="sbmBtn"  type="submit" value="Submit" onclick="myFunction()">
</form>
<script>
    var el = document.getElementById("outside");
    el.addEventListener("onClick", myFunction);
    function  myFunction()
    {

        var xhr = new XMLHttpRequest();
        var login = document.forms["outside"].elements["loginField"];
        var password = document.forms["outside"].elements["passwordField"];
        var params = 'login=' + encodeURIComponent(login) +
            '&password=' + encodeURIComponent(password);

        xhr.open("GET", '/loginAct?' + params, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            }
        };
        xhr.send(params);
    }

    /*
    function validateForm() {
        var x = document.forms["loginField"]["passwordField"].value;
        if (x == "") {
            alert("Name must be filled out");
            return false;
        }
    }
*/
    /*  function myFunction() {
      if (selectForm.elements.login.getAttribute()=="")
      {
          alert("Name must be filled out");
      }
    //  alert ("Hello World!");
  }

   */

</script>





</body>
</html>