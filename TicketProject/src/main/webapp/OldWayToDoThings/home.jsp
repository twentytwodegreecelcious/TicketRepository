<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.11.2015
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
          "/viewMovie",
          {},
          function (response) {
            var elem = document.getElementById('movie');
            elem.innerHTML = response;
          }
  )
</script>
