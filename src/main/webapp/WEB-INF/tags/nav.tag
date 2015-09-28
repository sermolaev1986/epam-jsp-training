<%@ attribute name="currentPage" required="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container" role="main">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">JSP training</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <c:choose>
                    <c:when test="${currentPage == 'home'}">
                        <li class="active"><a href="/">Home</a></li>
                        <li><a href="dictionary.jsp">Ajax dictionary</a></li>
                        <li><a href="geolocation.jsp">Geolocation</a></li>
                        <li><a href="json.jsp">JSON custom tag</a></li>
                    </c:when>
                    <c:when test="${currentPage == 'dictionary'}">
                        <li><a href="/">Home</a></li>
                        <li class="active"><a href="dictionary.jsp">Ajax dictionary</a></li>
                        <li><a href="geolocation.jsp">Geolocation</a></li>
                        <li><a href="json.jsp">JSON custom tag</a></li>
                    </c:when>
                    <c:when test="${currentPage == 'geolocation'}">
                        <li><a href="/">Home</a></li>
                        <li><a href="dictionary.jsp">Ajax dictionary</a></li>
                        <li class="active"><a href="geolocation.jsp">Geolocation</a></li>
                        <li><a href="json.jsp">JSON custom tag</a></li>
                    </c:when>
                    <c:when test="${currentPage == 'json'}">
                        <li><a href="/">Home</a></li>
                        <li><a href="dictionary.jsp">Ajax dictionary</a></li>
                        <li><a href="geolocation.jsp">Geolocation</a></li>
                        <li class="active"><a href="json.jsp">JSON custom tag</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/">Home</a></li>
                        <li><a href="dictionary.jsp">Ajax dictionary</a></li>
                        <li><a href="geolocation.jsp">Geolocation</a></li>
                        <li><a href="json.jsp">JSON custom tag</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>