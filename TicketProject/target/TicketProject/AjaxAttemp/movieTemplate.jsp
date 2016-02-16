<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 28.12.2015
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${movie.name}</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<div>
  <!--STATIC -->
  <div class="container-fluid">
    <div class="raw">
        <div class="col-md-8" id="banner"  style="margin-top: 20px; margin-bottom: 20px; margin-left: 30px; margin-right: 40px;">
          <img src="../images/banner.jpeg" width="500" height="175"/>
        </div>
        <form method="post" action="/greetings">
          <div id="Greeting!" class="col-md-3" style="text-align: right; margin-top: 30px; margin-bottom: 20px;">
            Welcome back, ${pageContext.session.getAttribute("user").firstName} ${pageContext.session.getAttribute("user").lastName}!
          </div>
        </form>
    </div>
  </div>
</div>
  <hr>
  <!-- End of the static part -->
<div>
  <div class="container-fluid">
    <div class="raw">
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
        <div class="col-md-10" style="margin: 10px;  border: solid; border-color:#CCCCCC; border-width: 1px;" id="---">
          <!-- Content to be ajaxed -->
          <script>
            $.post(
                    "/movie",
                    {},
                    function (response) {
                      //document.getElementById("movieToBePostedHere").innerHTML = response;
                    }
            )
          </script>
        </div>
    </div>
  </div>
</div>
</body>
</html>
