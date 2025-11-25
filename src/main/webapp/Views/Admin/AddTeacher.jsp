<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Teacher</title>
    <style>
        /* General Body and Container Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
        }

        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px; /* Max width for desktop viewing */
            width: 100%;
        }

        h2 {
            color: #333;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        /* Form Layout: Flexbox for responsiveness */
        form {
            display: flex;
            flex-direction: column; /* Stack by default on small screens */
            gap: 15px; /* Spacing between rows/groups */
        }

        /* Grouping fields for two-column layout on large screens */
        .form-row {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            width: 100%; /* Default to full width for stacking */
        }

        /* Input and Label Styling */
        label {
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="password"],
        input[type="date"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Include padding and border in the element's total width and height */
        }

        textarea {
            resize: vertical; /* Allow vertical resizing only */
            min-height: 100px;
        }

        /* Submit Button Styling */
        button[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.1em;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Media Query for Larger Screens (Desktop/Tablet) */
        @media (min-width: 600px) {
            .form-row {
                flex-direction: row; /* Change to row layout */
            }

            .form-group {
                width: calc(50% - 7.5px); /* Half width minus half the gap */
            }

            /* The Profile Image field still looks better full width */
            .full-width {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">

        <form action="<%=request.getContextPath() %>/addTeacher" method="post" enctype="multipart/form-data">

            <h2>Add Teacher Details</h2>

            <div class="form-row">
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>

            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="department">Department:</label>
                    <input type="text" id="department" name="department" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" name="subject" required>
                </div>
            </div>

            <div class="form-group full-width">
                <label for="qualifications">Qualifications:</label>
                <textarea id="qualifications" name="qualifications"></textarea>
            </div>

            <div class="form-group full-width">
                <label for="profileImage">Profile Image:</label>
                <input type="file" id="profileImage" name="profileImage">
            </div>

            <button type="submit">Add Teacher</button>
        </form>
    </div>

</body>
</html>