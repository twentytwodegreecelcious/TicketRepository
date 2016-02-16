<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 30.10.2015
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>


<table class="table table-hover">
  <thead>
  <tr>
    <td>Movie name</td>
    <td>Movie rating</td>
    <td>Producer</td>
    <td>Description</td>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${movieList}" var="m">
    <tr>
      <td><c:out value="${m.name}"/></td>
      <td><c:out value="${m.rating}"/></td>
      <td><c:out value="${m.producer}"/></td>
      <td><c:out value="${m.description}"/></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
