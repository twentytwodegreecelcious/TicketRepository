<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12.02.2016
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <c:forEach items="${movieRatingList}" var="m">
  <tr>
    <td><img src="../images/sold-dot.gif" width="10" height="10"/></td>
    <td>${m.movie.getName()}</td>
    <td>${m.vote}</td>
    <td>${m.modificationDate}</td>
    <td>${m.user.getUsername()}</td>
  </tr>
  </c:forEach>
  </tbody>
</table>