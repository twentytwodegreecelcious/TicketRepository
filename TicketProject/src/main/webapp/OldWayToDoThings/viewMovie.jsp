<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23.10.2015
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table>
  <tr>
    <td>
      <table class="table table-hover">
        <tr>
          <td width="20%">Movie name</td>
          <td width="80%">${movie.name}</td>
        </tr>
        <tr>
          <td width="20%">Country:</td>
          <td width="80%">${movie.producer}</td>
        </tr>
        <tr>
          <td width="20%">Rating</td>
          <td width="80%">${movie.rating}/5.0</td>
        </tr>
      </table>
    </td>
    <td>
      <img />
    </td>
  <tr>
    <table class="table table-hover">
      <tr>
        <td>Description:</td>
        <td>${movie.description}</td>
      </tr>
    </table></tr>
  </tr>
</table>