<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #4CAF50; /* Green color for success */
        }
        p {
            color: #333;
            font-size: 1.1em;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Operation Successful!</h1>
        <p>Your request has been processed successfully.</p>

        <%
            // Example of retrieving a dynamic message passed from a Servlet or another JSP
            String message = (String) request.getAttribute("successMessage");
            if (message != null && !message.isEmpty()) {
                out.println("<p><strong>Details:</strong> " + message + "</p>");
            }
        %>

        <a href="index.html" class="back-link">Go to Home</a>
        <%-- Replace 'index.html' with your actual starting page --%>
    </div>

</body>
</html>