<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Update Student</title>
    </head>

    <body>
        <h2>Update Student Age</h2>
        <form action="update" method="post">
            ID: <input type="number" name="id" required><br><br>
            Age: <input type="number" name="age" required><br><br>
            <input type="submit" value="UPDATE">
        </form>
    </body>

    </html>