<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.08.2015
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="/login" />
  <center>
    <table class="table table-hover">
      <tr>
        <td><p>Login:</p></td>
        <td><input type="text" name="logine" required/></td>
      </tr>
      <tr>
        <td><p>Password:</p></td>
        <td><input type="password" name="pass" required/></td>
      </tr>
      <tr>
        <td><input type="submit" value="Login" class="btn btn-default" role="button"/></td>
        <td><input type="reset" value="Reset" class="btn btn-default" role="button"/></td>
      </tr>
      <tr>
        <td colspan="2">Yet Not Registered!! <a href="Login, Registration/reg.jsp">Register Here</a></td>
      </tr>
    </table>
  </center>
</form>
</body>
</html>