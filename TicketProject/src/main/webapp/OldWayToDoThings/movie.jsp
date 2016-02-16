<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 18.12.2015
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
  <div class="container-fluid">
    <div class="raw">
      <div class="col-md-6">
        <table>
          <tr>
            <td>Name:</td>
            <td>${movie.name}</td>
          </tr>
          <tr>
            <td>Producer:</td>
            <td>${movie.producer}</td>
          </tr>
          <tr>
            <td>Rating:</td>
            <td>${movie.rating}</td>
          </tr>
        </table>
      </div>
      <div class="col-md-6">
        <img src="images/unnamed.png" width="300" height="300"/>
      </div>
    </div>
    <div class="raw">
      <p>${movie.description}</p>
    </div>
  </div>
</div>
