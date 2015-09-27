<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <script>
        function onGetCoordinates() {
            var xmlhttp = new XMLHttpRequest();
            var address = document.getElementById("addressBox").value;
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("coordinatesDisplay").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "geolocation.groovy?address=" + address, true);
            xmlhttp.send();
        }

        function onGetUserActions() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("userActionsDisplay").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "useractions.groovy", true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>Geolocation</h1>
    </div>
    <div class="text-center">
        <form class="form-inline lead">
            <input type="text" id="addressBox" class="form-control"/>
            <button type="button" class="btn btn-success" onclick="onGetCoordinates()">Get coordinates</button>
        </form>
        <p>
            <textarea id="coordinatesDisplay" class="form-control" rows="10"></textarea>
        </p>

        <form class="form-inline lead">
            <button type="button" class="btn btn-success" onclick="onGetUserActions()">Get user actions</button>
        </form>
        <p>
            <textarea id="userActionsDisplay" class="form-control" rows="10"></textarea>
        </p>
    </div>
</div>
</body>
</html>
