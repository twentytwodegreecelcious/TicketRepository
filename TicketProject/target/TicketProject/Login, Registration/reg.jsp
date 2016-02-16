<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.08.2015
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Registration</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<form method="post" action="/register">
  <center>
    <table border="1" width="30%" cellpadding="5" class="table table-hover">
      <thead>
      <tr>
        <th colspan="2">Enter Information Here</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>First Name</td>
        <td><input type="text" name="fname" value="" required/></td>
      </tr>
      <tr>
        <td>Last Name</td>
        <td><input type="text" name="lname" value="" required/></td>
      </tr>
      <tr>
        <td>User Name</td>
        <td><input type="text" name="uname" value="" required /></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="pw" value="" required/></td>
      </tr>
      <tr>
        <td><p name="message"/>${message}</td>
      </tr>
      <tr>
        <td><input type="submit" value="Submit"  class="btn btn-default" role="button"/></td>
        <td><input type="reset" value="Reset"  class="btn btn-default" role="button"/></td>
      </tr>
      <tr>
        <td colspan="2">Already registered? <a href="login.jsp">Login Here</a></td>
      </tr>
      </tbody>
    </table>
  </center>
</form>
</body>
</html>