<!-- What are some common HTTP status codes?
200 = OK
300 = Multiple choices
301 = moved permanently
302 = Found
304 = Not Modified
307 = Temporary Redirect
400 = Bad request
401 = Unauthorized
403 = Forbidden
404 = Not found
410 = Gone
500 = Internal Server Error
501 = Not Implemented
503 = Service Unavailable
550 = Permission denied

What is the difference between a GET request and a POST request? When might each be used?

POST requests supply additional data from the browser to the server in the message body whereas GET requests include all required data in the URL. 

In vernacular I understand : when GET is the method being used all form data is in the URL somewhere. With POST all the form data is within the body of the HTTP request. SO the data is in different spots. 

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests? 

A cookie is a small text file that is stored by a browser on a user's computer. - just plain text - no code that actually does anything. Web servers use them to identify individual users - example: facebook takes a login and sets a cookie once that info has been approved

Relates to HTTP because it is a small bit of info that is stored in a user's web browser


-->