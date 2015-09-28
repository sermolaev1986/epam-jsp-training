# epam-jsp-training

Initial assignment
------------

1.Write simple Java Web App with one servlet and one JSP page. 
JSP has AJAX call buttons (or forms if it’s easy for you) with names GET, POST, DELETE. 
Servlet can handle these requests and change its own state
 (inner state is presented as a large collection of String objects). 
JSP could display inner state of servlet (optional).

2.Write simple Java Web App with free structure (so many JSP and servlets as you wish) 
which can convert printed geolocation (city or place) to geo coordinates (latitude and longitude). 
Please keep all session actions and print them after clicking on special ‘User Actions Button’. 
Use Google Maps API for example.

3.Write custom tag library for JSON representation (JSON can be limited by two - three levels 
if it is required). 
Tag <ex:json> raw JSON </ex:json> should represent JSON like formatted intended HTML with levels of nesting, 
cool colored brackets and so on. Don’t forget provide tests (different JSON static files 
with size more than 1mb). 
Also you can develop JSP page with buttons for your tests loading 
(if you implement it through .tag files it will be a big plus)

4.Write custom tag library for Java code representation in two styles (Darkula and White). 
It looks familiar (yes, previous task), but we need in different lighting and styles of java keywords, 
variable names and classnames. Don’t forget provide tests with Java code examples. 
Don’t forget error pages. Don’t forget anything.

Solution
------------
All parts of assignment were implemented in **single web app**. **Maven** is used as build tool 
and dependency management tool. For pretty styles, **bootstrap css** is used.

1.Implemented app works with dictionary of the most frequently used English words. 
There is **dictionary.jsp** with embedded js scripts to make Ajax calls. 
Ajax calls handler is implemented in **com.epam.jsp_training.AjaxServlet** class. 
It loads English dictionary from **/WEB-INF/dictionary.txt** into in-memory collection. 
Servlet implements doGet, doPost, doDelete to manage in-memory dictionary.
This servlet is thread-safe (as it's supposed to be).
 
2.Functionality was implemented using **groovlets**. There is **geolocation.jsp** 
with embedded js scripts (Ajax calls), and two groovy scripts - 
**geolocation.groovy** and **useractions.groovy**. 
geolocation.groovy handles requests with address input, saves them to session, 
calls **Google Geocoding API**, parses response and returns coordinates.
useractions.groovy returns user inputs typed earlier, 
which are saved to session in geolocation.groovy.

3.There is **json.jsp** with custom tag included. Custom tag is implemented in 
**com.epam.jsp_training.JsonTag** class. Theoretically, implementation supports
 **any number of nesting levels** and uses **regular expressions** in its basis.
This is actually only scratch which can be improved further.
css styles for json pretty formatting are provided in **css/json.css**.
There is only style at the moment to support indentation, **no colored output supported**.
The solution is partly finished.

4.This part of assignment **was NOT done yet**.