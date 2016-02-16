<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 18.12.2015
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="moviesCount" value="${movies.size()}" />
<c:choose>
  <c:when test="${moviesCount == 0}">
    No movies found.
  </c:when>
  <c:otherwise>

    <table class="table table-hover">
      <thead>
      <tr>
        <td style="width: 50%;">Movie name:</td>
        <td style="width: 20%;">Rating:</td>
        <td style="width: 10%;">Producer:</td>
        <td style="width: 10%;">Status:</td>
        <td style="width: 10%;">Release date:</td>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${movies}" var="m">
        <tr>
          <td style="width: 50%;"><button type="submit" class="btn btn-default" name="movieId" data-toggle="modal" data-target="#myMoviesModal" onclick="openMovies(${m.movieId})"><c:out value='${m.name}'/></button></td>
          <td style="width: 20%;"><c:out value="${m.rating}"/></td>
          <td style="width: 10%;"><c:out value="${m.producer}"/></td>
          <td style="width: 10%;"><c:out value="${m.status}"/></td>
          <td style="width: 10%;"><c:out value="${m.releaseDate}"/></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </c:otherwise>
</c:choose>


<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myMoviesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

</div>

