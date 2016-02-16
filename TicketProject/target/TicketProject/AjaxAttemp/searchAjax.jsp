<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 16.11.2015
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<div class="container-fluid">--%>
  <%--<div class="raw">--%>
    <%--<div class="col-md-2"><!--Empty div --></div>--%>
    <%--<div class="col-md-8">--%>
      <%--<table class="table table-hover">--%>
        <%--<tr>--%>
          <%--<form method="post" action="/search">--%>
            <%--<td><input type="text" name="searchRequest" style="width: 1000px; height:50px; font-size: 17px;"/></td>--%>
            <%--<td><button class="btn btn-default" type="submit" style="width: 200px; height:50px;">Submit</button></td>--%>
          <%--</form>--%>
        <%--</tr>--%>
      <%--</table>--%>
    <%--</div>--%>
    <%--<div class="col-md-1"><!--Another empty div --></div>--%>
  <%--</div></div>--%>
<%--<div class="container-fluid">--%>
  <%--<div class="raw">--%>
    <%--<div class="col-md-2"><!--Empty div--></div>--%>
    <%--<div class="col-md-8">--%>
      <%--<hr style="color: #505050;">--%>
    <%--</div>--%>
    <%--<div class="col-md-1"><!-- Another empty div --></div>--%>
  <%--</div>--%>
<%--</div>--%>

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
  <c:forEach items="${movies}" var="m">
    <tr>
      <td>${m.name}</td>
      <td>${m.rating}</td>
      <td>${m.producer}</td>
      <td>${m.description}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>