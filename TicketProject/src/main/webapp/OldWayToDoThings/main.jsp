<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11.09.2015
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../mainpage.css">
</head>
<body>
<div>
  <div class="col-md-8" id="banner"  style="margin-top: 20px; margin-bottom: 20px; margin-left: 30px; margin-right: 40px;">
      <img src="../images/banner.jpeg" width="500" height="175"/>
    </div>
  <form method="post" action="/greetings">
    <div id="Greeting!" class="col-md-3" style="text-align: right; margin-top: 30px; margin-bottom: 20px;">
      Welcome back, ${pageContext.session.getAttribute("user").firstName} ${pageContext.session.getAttribute("user").lastName}!
    </div>
  </form>
</div>
<div id="MainMenu" style="margin: 20px;">
  <div class="btn-group btn-group-lg"  role="group" aria-label="Button group with nested dropdown" style="display: inline-block;">
      <button class="btn btn-default" onclick="location.href='../OldWayToDoThings/main.jsp';" style="width: 200px;">Home</button>
      <button class="btn btn-default" onclick="location.href='../OldWayToDoThings/search.jsp';"style="width: 200px;">Search</button>
      <button class="btn btn-default" onclick="location.href='../OldWayToDoThings/profile.jsp';"style="width: 200px;">Profile</button>
      <button class="btn btn-default" onclick="location.href='../OldWayToDoThings/movies.jsp';" style="width: 200px;">Movies</button>
    </div>
  <form method="post" action="/logout" style="float: right; display: inline-block;">
    <div class="dropdown" style="margin-right: 40px;">
      <button id="dLabel" class="btn btn-danger" style="width: 200px;" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Logout
        <span class="caret"></span>
      </button>
      <ul class="dropdown-menu" aria-labelledby="dLabel">
        <li style="width: 200px; font-size: 15px; text-align: center;" onclick="location.href='../Login, Registration/login.jsp'">Switch between users</li>
        <li role="separator" class="divider"></li>
        <li style="width: 200px; font-size: 15px; text-align: center;" onclick="location.href='../Login, Registration/reg.jsp'">Register new user</li>
      </ul>
    </div>
  </form>
  </div>
<form method="post" action="/userinfo">
<div id="user_info_main-page" class="col-md-2" style="margin: 10px;  border: solid; border-color:#CCCCCC; border-width: 1px;">

  <table class="table table-hover" style="margin-top: 5px; text-align: center;">
    <tr style="align-content: center;"><td><img src="../images/avatar.jpg" height="200px" width="200px"/></td></tr>
    <tr>
      <td>${user.username}</td>
    </tr>
    <tr>
      <td>${user.firstName}</td>
    </tr>
    <tr>
      <td>${user.lastName}</td>
    </tr>
    <tr>
      <td>${user.status}</td>
    </tr>
  </table>
</div>
</form>
<div class="col-md-3"></div>
<div class="col-md-9" style="margin: 10px;  border: solid; border-color:#CCCCCC; border-width: 1px;">
  <table class="table table-hover" style="margin-top: 5px;">
    <thead>
      <tr>
        <td><b>#</b></td>
        <td><b>Movie name</b></td>
        <td><b>Rate</b></td>
        <td><b>Date and time</b></td>
        <td><b>By user</b></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><img src="../images/sold-dot.gif" width="10" height="10"/></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td><img src="../images/sold-dot.gif" width="10" height="10"/></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td><img src="../images/sold-dot.gif" width="10" height="10"/></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td><img src="../images/sold-dot.gif" width="10" height="10"/></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>
</div>
<div class="col-md-3"></div>
<div class="col-md-9" id="movie" style="margin: 10px; border: solid; border-color:#CCCCCC; border-width: 1px;">


</div>

<script>
  $.get(
          "${pageContext.servletContext.contextPath}/viewMovie",
          {},
          function (response) {
            var elem = document.getElementById('movie');
            elem.innerHTML = response;
          }
  )
</script>

</body>
</html>
