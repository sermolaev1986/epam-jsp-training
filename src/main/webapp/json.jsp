<%@ taglib prefix="ex" uri="http://epam.com" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>JSON</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jsp-training.css" rel="stylesheet">
    <link href="css/json.css" rel="stylesheet">

</head>
<body>
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
                <li><a href="/">Home</a></li>
                <li><a href="dictionary.jsp">Ajax dictionary</a></li>
                <li><a href="geolocation.jsp">Geolocation</a></li>
                <li class="active"><a href="json.jsp">JSON custom tag</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="page-header">
        <h1>JSON</h1>
    </div>
    <form class="form-group lead" action="json" method="post">
        <p>
            <textarea name="json" class="form-control" rows="10"></textarea>
        </p>
        <button type="submit" class="btn btn-success">Format JSON</button>
    </form>

    <div class="page-header">
        <h1>Formatted JSON</h1>
    </div>
    <ex:json>${json}</ex:json>
</div>
</body>
</html>
