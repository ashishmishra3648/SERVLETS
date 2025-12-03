<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Student Registration</title>
    </head>

    <body>
        <h2>Student Registration Form</h2>
        <form action="register" method="post">
            ID: <input type="number" name="id" required><br><br>
            Name: <input type="text" name="name" required><br><br>
            Age: <input type="number" name="age" required><br><br>
            <input type="submit" value="REGISTER">
        </form>
    </body>

    </html>