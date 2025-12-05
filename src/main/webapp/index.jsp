<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Student Management System</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                margin-top: 50px;
            }

            h1 {
                color: #333;
            }

            .container {
                margin: 0 auto;
                width: 300px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            a {
                display: block;
                margin: 10px 0;
                padding: 10px;
                text-decoration: none;
                color: white;
                background-color: #007BFF;
                border-radius: 5px;
            }

            a:hover {
                background-color: #0056b3;
            }
        </style>
    </head>

    <body>
        <h1>Student Management System</h1>
        <p style="text-align: center; color: #666; margin-bottom: 30px;">Choose an option below</p>
        <div class="container">
            <h3 style="color: #667eea; margin-bottom: 15px; text-align: center;">🔐 Authentication</h3>
            <a href="Login.jsp">Login</a>
            <a href="Register.jsp">Register</a>

            <h3 style="color: #667eea; margin: 30px 0 15px 0; text-align: center;">📐 Shape Area Calculators</h3>
            <a href="circle.jsp" style="background-color: #667eea;">🔵 Circle Area</a>
            <a href="triangle.jsp" style="background-color: #11998e;">🔺 Triangle Area</a>
            <a href="ellipse.jsp" style="background-color: #fa709a;">⭕ Ellipse Area</a>
            <a href="semicircle.jsp" style="background-color: #4facfe;">🌓 Semi-Circle Area</a>
            <a href="trapezium.jsp" style="background-color: #f093fb;">🔶 Trapezium Area</a>
            <a href="parallelogram.jsp" style="background-color: #fcb69f; color: #333;">▱ Parallelogram Area</a>
        </div>
    </body>

    </html>