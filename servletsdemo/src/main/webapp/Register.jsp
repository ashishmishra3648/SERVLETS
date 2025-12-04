<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Register</title>
    </head>

    <body>
        <h2>Register</h2>
        <% String msg=(String) request.getAttribute("msg"); if (msg !=null) { %>
            <h3 style="color:red">
                <%=msg %>
            </h3>
            <% } %>
                <form action="register" method="post">
                    ID:<input type="number" name="id" required><br>
                    Name:<input type="text" name="name" required><br>
                    Age:<input type="number" name="age" required><br>
                    Username:<input type="text" name="username" required><br>
                    Password:<input type="password" name="password" required><br>
                    Confirm Password:<input type="password" name="cpassword" required><br>
                    <input type="submit" value="REGISTER">
                </form>
                <a href="Login.jsp">Login</a>
    </body>

    </html>