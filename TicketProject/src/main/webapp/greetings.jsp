<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23.10.2015
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="Greeting!" class="col-md-3" style="text-align: right; margin-top: 30px; margin-bottom: 20px;">
    Welcome back, ${pageContext.session.getAttribute("user").first_name} ${pageContext.session.getAttribute("user").last_name}!
</div>
