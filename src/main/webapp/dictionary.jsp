<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>Dictionary</title>

    <t:css/>

    <script>
        function onGet() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("dictionaryArea").innerHTML = xmlhttp.responseText;
                }
            };
            xmlhttp.open("GET", "ajax", true);
            xmlhttp.send();
        }

        function onPost() {
            var xmlhttp = new XMLHttpRequest();
            var newWord = document.getElementById("newWordTextBox").value;
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4) {
                    if (xmlhttp.status == 200) {
                        window.alert('New word ' + newWord + ' added successfully');
                    } else if (xmlhttp.status == 409) {
                        window.alert('Word ' + newWord + ' is already in dictionary');
                    }
                }
            };
            xmlhttp.open("POST", "ajax?word=" + newWord, true);
            xmlhttp.send();
        }

        function onDelete() {
            var xmlhttp = new XMLHttpRequest();
            var wordToDelete = document.getElementById("deleteWordTextBox").value;
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.status == 200) {
                    window.alert('The word ' + wordToDelete + ' removed successfully');
                } else if (xmlhttp.status == 404) {
                    window.alert('Word ' + wordToDelete + ' was not found in dictionary');
                }
            };
            xmlhttp.open("DELETE", "ajax?word=" + wordToDelete, true);
            xmlhttp.send();
        }
    </script>
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
                <li class="active"><a href="dictionary.jsp">Ajax dictionary</a></li>
                <li><a href="geolocation.jsp">Geolocation</a></li>
                <li><a href="json.jsp">JSON custom tag</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="page-header">
        <h1>Dictionary</h1>
    </div>
    <form class="form-inline lead">
        <button type="button" class="btn btn-success" onclick="onPost()">POST a new word to dictionary</button>
        <input type="text" id="newWordTextBox" class="form-control"/>
    </form>

    <form class="form-inline lead">
        <button type="button" class="btn btn-danger" onclick="onDelete()">DELETE a word from dictionary</button>
        <input type="text" id="deleteWordTextBox" class="form-control"/>
    </form>

    <div class="text-center">
        <form class="form-group">
            <p>
                <button type="button" class="btn btn-lg btn-primary" onclick="onGet()">GET a fresh dictionary</button>
            </p>
            <p>
                <textarea id="dictionaryArea" class="form-control" rows="25"></textarea>
            </p>
        </form>
    </div>
</div>
</body>
</html>
