  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%--
    Created by IntelliJ IDEA.
    User: User
    Date: 30.10.2015
    Time: 16:32
    To change this template use File | Settings | File Templates.
  --%>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <html>
  <head>
      <title>TicketProject</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

  </head>
    <body>
    <div>
      <!--STATIC -->
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

      <hr>
      <!-- End of the static part -->
      <div style="margin-top: 20px;">
        <div class="container-fluid">
          <div class="raw">
            <div class="col-md-9">
        <!-- Nav tabs -->
        <ul id="MyTab" class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active" style="width: 200px; text-align: center; font-size: 20px;"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
          <li role="presentation" style="width: 200px; text-align: center; font-size: 20px;"><a href="#search" aria-controls="search" role="tab" data-toggle="tab">Search</a></li>
          <li role="presentation" style="width: 200px; text-align: center; font-size: 20px;"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
          <li role="presentation" style="width: 200px; text-align: center; font-size: 20px;" id="movieli"><a href="#movies" aria-controls="movies" role="tab" data-toggle="tab">Movies</a></li>
        </ul>
            </div>
            <div class="col-md-2">
        <form method="post" action="/logout" style="float: right; display: inline-block;">
          <div class="dropdown" style="margin-right: 40px;">
            <button id="dLabel" class="btn btn-danger btn-lg" style="width: 200px;" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
          </div>
        </div>

        <!-- Tab panes -->
        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="home">


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
                <div class="col-md-3"></div>
                <div class="col-md-9" style="margin: 10px;  border: solid; border-color:#CCCCCC; border-width: 1px;" id="movieRatingsToBePostedHere">
                  <!-- Movie ratings will be ajaxed here -->
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-9" id="movie" style="margin: 10px; border: solid; border-color:#CCCCCC; border-width: 1px;">


                </div>

                <script>
                  $.get(
                          "/${pageContext.servletContext.contextPath}viewMovie",
                          {},
                          function (response) {
                            var elem = document.getElementById('movie');
                            elem.innerHTML = response;
                          }
                  )

                  $.get(
                          "/${pageContext.servletContext.contextPath}displayRecentRatings",
                          {},
                          function (response) {
                            var element = document.getElementById("movieRatingsToBePostedHere");
                            element.innerHTML = response;
                          }
                  )
                </script>
              </div>
            </div>


          </div>
          <div role="tabpanel" class="tab-pane" id="search">

            <div class="container-fluid" style="margin-top: 20px;">
              <div class="raw">
                <div class="col-md-2"><!--Empty div --></div>
                <div class="col-md-8">
                  <form method="post" id="movieSearch" action="/search" results="#movieSearchResults">
                  <table class="table table-hover">
                    <tr>
                        <td><input type="text" name="searchRequest" value="" style="width: 1000px; height:50px; font-size: 17px;"/></td>
                        <td><button class="btn btn-default" type="submit" style="width: 200px; height:50px;">Search</button></td>
  <!--
                        $.post ('${pageContext.servletContext.contextPath}/search',
                                $('movieSearch').serialize(),
                                function (response) {
                                  var elem = document.getElementById('searchDiv');
                                  elem.innerHTML =  response;
                                }
                        )
  -->
                    </tr>
                  </table>
                  </form>
                </div>
                <div class="col-md-1"><!--Another empty div --></div>
              </div></div>
            <hr style="color: #505050;">
            <div class="container-fluid">
              <div class="raw">
                <div class="col-md-2"><!--Empty div--></div>
                <div class="col-md-8" id="movieSearchResults">

                </div>
                <div class="col-md-1"><!-- Another empty div --></div>
              </div>
            </div>
            </form>


          </div>
          <div role="tabpanel" class="tab-pane" id="profile">


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



          </div>
          <div role="tabpanel" class="tab-pane" id="movies">
            <div class="container-fluid">
              <div class="raw">
                <div class="col-md-2">
                  <form method="post" action="/userinfo">
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
                  </form>
                </div>
                <div class="col-md-9" id="movieToBePostedHere">
                    <script>
                      $.post(
                              "/${pageContext.servletContext.contextPath}showMovies",
                              {},
                              function(response) {
                                var results = document.getElementById('movieToBePostedHere');
                                results.innerHTML = response;
                              }
                      )
                    </script>
                </div>
              </div>
            </div>























            <script>
             /* $.get(
                      "${pageContext.servletContext.contextPath}/showMovies",
                      {},
                      function (response) {
                        var elem = document.getElementById("movieListHere");
                        elem.innerHTML= response;
                      }
              )*/
            </script>
          </div>


          </div>

      </div>


  <!-- script>
    function submitForm(id, url){
      var data = {};

      data.searchCriterea = $(id).val();

      $.post(url, data);
    }

    $("searchResults").append(htmlSnippet);
  </script -->
    </div>
  <script>
    function submitForm(event) {
  //    var results = '#' + this.id + 'Results';
      event.preventDefault();
      var results = this.attributes.results.value;
      $.post(this.action, $( this ).serialize(), function(data) {
        $( results ).html(data);
      });
    }

    $('#movieSearch').submit(submitForm);


    window.openMovies = function(id) {
      //Opens modal window
      $('#myMovieModal').modal('hide');
      $.post(
              "/${pageContext.servletContext.contextPath}getMovie",
              {movieId: id},

              function asd(response) {
                var results = document.getElementById('myMoviesModal');
                results.innerHTML = response;

              }
      )

    }



    window.openMovie = function(id) {
      //Opens modal window
      $('#myMovieModal').modal('hide');
      $.post(
              "/${pageContext.servletContext.contextPath}getMovie",
              {movieId: id},

              function asd(response) {
                var results = document.getElementById('myMovieModal');
                results.innerHTML = response;
              }
      )

    }


    window.submitRating = function (rating) {
      $.get (
              "/${pageContext.servletContext.contextPath}getRating",
              {rating: rating},
              function (response) {
                //TODO finish this method
              }
      )
    }


  </script>


  </body>
  </html>
