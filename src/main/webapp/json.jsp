<%@ taglib prefix="ex" uri="http://epam.com" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>JSON</title>

    <t:css/>
    <link href="css/json.css" rel="stylesheet">

</head>
<body>

<t:nav currentPage="json"/>

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
