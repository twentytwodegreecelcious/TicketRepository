<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.10.2015
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
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
<!-- end of the header -->


<!--Content -->

<div class="container-fluid" style="margin: 20px;">
  <div class="raw">
    <div class="col-md-2">
      <button class="btn btn-primary" type="submit" style="width: 150px; height: 50px;" data-toggle="modal" data-target="#myModal">Modify profile</button></form>
    </div>
    <div class="col-md-9" style="border: solid; border-color: #CCCCCC;">
      <div class="container-fluid" style="margin: 20px;">
        <div class="raw">
          <div class="col-md-9">
            <form method="post" action="/profile">
            <table class="table table-hover" style="margin-top: 30px;">
              <tr>
                <td>Username:</td>
                <td>${user.username}</td>
              </tr>
              <tr>
                <td>First Name:</td>
                <td>${user.firstName}</td>
              </tr>
              <tr>
                <td>Last Name:</td>
                <td>${user.lastName}</td>
              </tr>
              <tr>
                <td>Registration Date:</td>
                <td>${user.registered}</td>
              </tr>
            </table>
            </form>
          </div>
          <div class="col-md-2">
            <img src="../images/avatar.jpg">
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-2">
      <!-- another empty div -->
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <form method="get" action="/modifyProfile">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Modify Profile</h4>
      </div>
      <div class="modal-body">
        <table class="table table-hover" style="margin-top: 30px;">
          <tr>
            <td>Username:</td>
            <td><input type="text" name="newUsername" value="${user.username}" required/></td>
          </tr>
          <tr>
            <td>First Name:</td>
            <td><input type="text" name="newFirstName" value="${user.firstName}" required/></td>
          </tr>
          <tr>
            <td>Last Name:</td>
            <td><input type="text" name="newLastName" value="${user.lastName}" required/></td>
          </tr>
          <tr>
            <td>Registration Date:</td>
            <td>${user.registered}</td>
          </tr>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save and Submit</button>
      </div>
    </div>
  </div>
  </form>
</div>

</body>
</html>
