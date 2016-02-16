<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.10.2015
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--%@ page import="java.util.*" %-->
<html>
<head>
    <title>Search</title>
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
      Welcome back, ${greetings}!
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


<!-- End of the header -->

<!-- Content -->

<div class="container-fluid">
  <div class="raw">
    <div class="col-md-2"><!--Empty div --></div>
    <div class="col-md-8">
      <table class="table table-hover">
        <tr>
          <!--form method="post" action="/search"-->
          <td><input type="text" name="searchRequest" style="width: 1000px; height:50px; font-size: 17px;"/></td>
          <td><button class="btn btn-default" type="submit" onclick="
                    $.get(
                    '/searchResult',
                    {},
                    function (response) {
                        var element = document.getElementById('searchResult');
                        element.innerHTML = response;
                    }
            )

          " style="width: 200px; height:50px;">Submit</button></td>
          <!--/form-->
        </tr>
      </table>
    </div>
    <div class="col-md-1"><!--Another empty div --></div>
  </div></div>
<div class="container-fluid">
  <div class="raw">
    <div class="col-md-2"><!--Empty div--></div>
    <div class="col-md-8" id="searchResult">
      <hr style="color: #505050;">
    </div>
    <div class="col-md-1"><!-- Another empty div --></div>
  </div>
</div>


<script>

</script>

</body>
</html>
